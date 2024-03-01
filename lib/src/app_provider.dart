import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:stickerai/core/dependecy_injections/global_di_holders.dart';
import 'package:stickerai/core/local_storage/storage_key.dart';
import 'package:stickerai/core/revenue_cat/app_data.dart';
import 'package:stickerai/src/app_state.dart';
import 'package:stickerai/src/shared/extensions/string_extension.dart';
import 'package:stickerai/src/shared/handlers/deep_link_handler.dart';

final appProvider = StateNotifierProvider<AppNotifier, AppState>((ref) {
  return AppNotifier(ref);
});

class AppNotifier extends StateNotifier<AppState> {
  AppNotifier(this.ref) : super(const AppState.loading());
  final Ref ref;

  Future<void> init(AppState appState) async {
    _configs();

    state = appState;
    await Future.delayed(const Duration(milliseconds: 100));
    if (mounted) {
      deepLinkHandlers();
      initPlatformState();
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

  Future<void> initPlatformState() async {
    appData.appUserID = await Purchases.appUserID;

    Purchases.addCustomerInfoUpdateListener((customerInfo) async {
      appData.appUserID = await Purchases.appUserID;

      customerInfo = await Purchases.getCustomerInfo();
      final entitlement = customerInfo.entitlements.all["premium"];
      appData.entitlementIsActive = entitlement?.isActive ?? false;
    });

    appData.dailyUsageLimit = getDailyUsageLimit();
  }

  int getDailyUsageLimit() {
    final dailyUsageLimit = hiveStorage.readInt(key: StorageKey.dailyUsageLimit);
    final lastAction24HoursAgo = isLastActionMoreThan24HoursAgo();
    if (lastAction24HoursAgo) {
      hiveStorage.writeInt(key: StorageKey.dailyUsageLimit, value: 0);
      return 0;
    }
    if (dailyUsageLimit == null) {
      return 0;
    }

    return dailyUsageLimit;
  }

  bool isLastActionMoreThan24HoursAgo() {
    final lastAction = hiveStorage.readInt(key: StorageKey.lastActionTime);
    if (lastAction == null) {
      return true;
    }
    final lastActionDateTime = DateTime.fromMillisecondsSinceEpoch(lastAction);
    return DateTime.now().difference(lastActionDateTime).inHours > 24;
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
