import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stickerai/core/dependecy_injections/global_di_holders.dart';
import 'package:stickerai/core/local_storage/storage_key.dart';
import 'package:stickerai/features/navigation_bar/presentation/bottom_navigation.dart';
import 'package:stickerai/features/onboarding/onboarding.dart';
import 'package:stickerai/features/splash/splash.dart';
import 'package:stickerai/localization/language_provider.dart';
import 'package:stickerai/src/app_provider.dart';
import 'package:stickerai/src/app_state.dart';
import 'package:stickerai/src/providers/theme_provider.dart';
import 'package:stickerai/src/shared/constants/app_constants.dart';
import 'package:stickerai/src/shared/constants/app_design_constant.dart';
import 'package:stickerai/src/shared/widgets/dialog/app_dialog.dart';
import 'package:stickerai/src/shared/observer/custom_route_observer.dart';
import 'package:stickerai/src/shared/widgets/exception/exception_on_launch.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:stickerai/localization/app_localizations.dart';

final GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class App extends ConsumerWidget {
  const App({super.key, required this.customRouteObserver});

  final CustomRouteObserver customRouteObserver;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final app = ref.watch(appProvider);

    return ScreenUtilInit(
      designSize: AppDesignConstants.designSize,
      minTextAdapt: true,
      splitScreenMode: false,
      useInheritedMediaQuery: true,
      builder: (context, child) {
        final themeController = ref.read(themeProvider);
        return MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          locale: Locale(ref.watch(languageProvider).urlCode),
          supportedLocales: AppLocalizations.supportedLocales,
          navigatorObservers: [
            customRouteObserver,
          ],
          themeMode: themeController.themeMode,
          title: AppConstants.appTitle,
          theme: themeController.themeData,
          navigatorKey: appNavigatorKey,
          debugShowCheckedModeBanner: false,
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: StreamBuilder<ConnectivityResult>(
                  stream: Connectivity().onConnectivityChanged,
                  builder: ((context, snapshot) {
                    final connectivityResult = snapshot.data;
                    if (connectivityResult == ConnectivityResult.none) {
                      return Container();
                    } else {
                      // has connection check should relaunch
                      if (app is AppStateError) {
                        // if my app is not loaded successfully then connectivityResult will be null
                        if (connectivityResult == null) {
                          return Container();
                        } else {
                          ref.read(appProvider.notifier).reLaunch(context);
                          return const SizedBox.shrink();
                        }
                      }
                    }
                    return Overlay(
                      initialEntries: [
                        if (child != null) ...[
                          OverlayEntry(
                            builder: (context) {
                              return child;
                            },
                          ),
                        ],
                      ],
                    );
                  }),
                ),
              ),
            );
          },
          home: app.map(
            loaded: (_) {
              final notfirstTime = hiveStorage.readBool(key: StorageKey.firstTime);
              if (notfirstTime) {
                return const BottomNavBar();
              }
              return const OnboardingController();
            },
            error: (_) => const ExceptionOnAppLaunch(),
            loading: (_) => const SplashScreen(),
            jailbroken: (value) {
              return Builder(
                builder: (context) {
                  return Scaffold(
                    backgroundColor: Colors.white,
                    body: AppDialog.show(
                      context,
                      title: "tr.warning",
                      description: "tr.jailbroken",
                    ),
                  );
                },
              );
            },
            needsUpdate: (value) {
              return Builder(
                builder: (context) {
                  return Scaffold(
                    backgroundColor: Colors.white,
                    body: AppDialog.show(
                      context,
                      title: "tr.warning",
                      description: "tr.newUpdateAvailable",
                      confirmText: "tr.updateNow",
                      onTapConfirm: () async {
                        if (await canLaunchUrl(
                          Uri.parse(value.storeInfo.storeLink),
                        )) {
                          await launchUrl(
                            Uri.parse(value.storeInfo.storeLink),
                            mode: LaunchMode.externalApplication,
                          );
                        } else {
                          // ignore: use_build_context_synchronously
                          ref.read(appProvider.notifier).reLaunch(context);
                        }
                      },
                      cancelText: value.storeInfo.forceEnabled ? null : "tr.updateLater",
                      onTapCancel: value.storeInfo.forceEnabled
                          ? null
                          : () {
                              ref.read(appProvider.notifier).reLaunch(context);
                            },
                    ),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
