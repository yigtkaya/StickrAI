import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stickerai/core/dependecy_injections/global_di_holders.dart';
import 'package:stickerai/core/local_storage/storage_key.dart';
import 'package:stickerai/src/app_state.dart';
import 'package:stickerai/src/shared/extensions/string_extension.dart';
import 'package:stickerai/src/shared/handlers/deep_link_handler.dart';

final appProvider = StateNotifierProvider<AppNotifier, AppState>((ref) {
  return AppNotifier(ref);
});

class AppNotifier extends StateNotifier<AppState> {
  AppNotifier(this.ref) : super(const AppState.notAuthorized());
  final Ref ref;

  Future<void> init(AppState appState) async {
    _configs();

    state = appState;
    await Future.delayed(const Duration(milliseconds: 100));
    if (mounted) {
      final currentState = state;
      if (currentState is AppStateAuthorized) {
        //update token and customer
        // loggedIn(
        //   token: currentState.token,
        //   /*customer: currentState.customer*/
        //   refreshToken: currentState.refreshToken,
        //   refreshTokenExpiration: currentState.refreshTokenExpiration,
        //   userId: currentState.userId,
        // );
      }
      deepLinkHandlers();
    }
  }

  Future<void> refreshLaunch(BuildContext? context) async {
    // simulate     final networkDependencies = await setupDI(env: DevelopmentEnvironment()); on main
    state = const AppState.loading();
    if (mounted && context != null && context.mounted) {
      // context.pushAndRemoveUntil(FullBlackLoader.route());
    }

    await Future.delayed(const Duration(milliseconds: 100));

    //  final onboardingContent = await onboardingContentRequest();
    //  if (onboardingContent == null) {
    state = const AppState.error();
    return;
    //  }
    //ref.read(onboardingContentProvider.notifier).state = onboardingContent;

    //final autoLoginResponse = await autoLoginRequest();
  }

  void reLaunch(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (hiveStorage.readBool(key: StorageKey.logout, defaultValue: true)) {
        const AppState.notAuthorized();
        if (mounted && context.mounted) {
          // context.pushAndRemoveUntil(WelcomeView.route());
        }
        return;
      }
      refreshLaunch(context);
    });
  }

  void deepLinkHandlers() async {
    if (state is AppStateNeedsUpdate || state is AppStateJailbroken) {
      return;
    }
    var initialLink = "";
    final appLinks = AppLinks();
    appLinks.allUriLinkStream.listen((uri) {
      // Do something (navigation, ...)
      initialLink = uri.toString();
      handleDeepLink(initialLink);
    });
    if (initialLink.isNotNullOrEmpty) {
      handleDeepLink(initialLink);
    }
  }

  void _configs() {
    GlobalAppRef.instance.setRef(ref);
  }
}

///Singleton [GlobalAppRef]
class GlobalAppRef {
  GlobalAppRef._internal();

  static final GlobalAppRef _instance = GlobalAppRef._internal();

  static GlobalAppRef get instance => _instance;
  late Ref ref;

  void setRef(Ref ref) {
    this.ref = ref;
  }
}
