import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:stickerai/core/dependecy_injections/di_development.dart';
import 'package:stickerai/core/dependecy_injections/di_production.dart';
import 'package:stickerai/core/dependecy_injections/di_staging.dart';
import 'package:stickerai/core/dependecy_injections/global_di_holders.dart';
import 'package:stickerai/core/environment/env_extensions.dart';
import 'package:stickerai/core/environment/environment.dart';
import 'package:stickerai/core/firebase/remote_config/remote_config_service.dart';
import 'package:stickerai/core/local_storage/hive_helper.dart';
import 'package:stickerai/src/app_state.dart';
import 'package:stickerai/src/shared/constants/app_constants.dart';
import 'package:stickerai/src/shared/helpers/analytics_helper.dart';
import 'package:stickerai/src/shared/observer/statusbar_manager.dart';
import 'package:stickerai/store_version_check/store_check.dart';
import 'package:stickerai/store_version_check/store_info.dart';

Future<({AppState appState})> setupDI({
  // dont use this  , use env from di
  required Environment privateEnv,
}) async {
  WidgetsFlutterBinding.ensureInitialized();

  // register global di here
  // set env di
  di.registerSingleton<Environment>(privateEnv);

  // set hive helper di
  di.registerSingleton<HiveHelper>(HiveHelper());

  //set environment dependency later
  if (privateEnv is ProductionEnvironment) {
    await setupProdDI();
  } else if (privateEnv is StagingEnvironment) {
    await setupStgDI();
  } else {
    await setupDevDI();
  }

  // call global inits after environment di setup is done
  // RemoteConfigService.instance.init();

  //for analytics
  di.registerSingleton<AnalyticsHelper>(AnalyticsHelper());

  // override http request
  HttpOverrides.global = MyHttpOverrides();

  // configure ui modes
  await systemUIModeConfiguration();

  // configure web view settings
  // await webviewConfig();

  await getPackageInfo();

  // network requests
  // final onBoardingContent = await onboardingContentRequest();
  // if (onBoardingContent == null) {
  //   return (appState: const AppState.error(), content: null);
  // }
  final appState = await _getAppState();

  return (appState: appState);
}

Future<AppState> _getAppState() async {
  //jail break check
  if ((env.isStg || env.isProd) && !kDebugMode) {
    var jailBroken = false;
    try {
      jailBroken = await FlutterJailbreakDetection.jailbroken;
    } catch (e) {
      jailBroken = true;
    }
    if (jailBroken) {
      return const AppState.jailbroken();
    }

    // version check
    final storeInfo = await _checkUpdateNeed();
    if (storeInfo != null && storeInfo.needUpdate) {
      return AppState.needsUpdate(storeInfo: storeInfo);
    }
  }

  //if (hiveStorage.readBool(key: StorageKey.logout, defaultValue: true)) { hiveStorage.writeBool(key: StorageKey.logout, value: true);
  return const AppState.notAuthorized();
  //}
  // final autoLoginResponse = await autoLoginRequest();
  //if (autoLoginResponse.token == null || autoLoginResponse.customer == null) {
  // hiveStorage.writeBool(key: StorageKey.logout, value: true);
  //return const AppState.notAuthorized();
  // }
  //  analytics.log(name: 'sign_in', parameters: {"step": "complete"});
  // return AppState.authorized(
  //   token: autoLoginResponse.token!,
  //   customer: autoLoginResponse.customer!,
  // );
}

Future<StoreInfo?> _checkUpdateNeed() async {
  try {
    final updateConfig = RemoteConfigService.instance.getUpdateConfig();

    if (updateConfig.checkVersion) {
      final storeVersionCheck = StoreVersionCheck(
        appId: env.appleAppId,
        appName: env.appleAppName,
        minVersion: updateConfig.forceStoreVersion ? null : updateConfig.minRequiredVersion,
      );
      final storeInfo = await storeVersionCheck.getStoreInfo();
      if (storeInfo.needUpdate) {
        return storeInfo.copyWith(
          forceEnabled: updateConfig.forceUpdate,
        );
      }
    }

    return StoreInfo(needUpdate: false);
  } catch (e) {
    log('di.dart: _checkUpdateNeed => ${e.toString()}');
  }
  return null;
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (cert, String host, int port) => true;
  }
}

// Future<void> webviewConfig() async {
//   try {
//     if (Platform.isAndroid) {
//       await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);

//       final swAvailable = await AndroidWebViewFeature.isFeatureSupported(
//         AndroidWebViewFeature.SERVICE_WORKER_BASIC_USAGE,
//       );
//       final swInterceptAvailable = await AndroidWebViewFeature.isFeatureSupported(
//         AndroidWebViewFeature.SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST,
//       );

//       if (swAvailable && swInterceptAvailable) {
//         final serviceWorkerController = AndroidServiceWorkerController.instance();

//         await serviceWorkerController.setServiceWorkerClient(
//           AndroidServiceWorkerClient(
//             shouldInterceptRequest: (request) async {
//               if (kDebugMode) {
//                 print(request);
//               }
//               return null;
//             },
//           ),
//         );
//       }
//     }
//   } catch (e) {
//     log('di.dart: webviewConfig => ${e.toString()}');
//   }
// }

Future<void> systemUIModeConfiguration() async {
  try {
    await SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
      overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom],
    );
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    await StatusBarManager.instance.setStatusBarColorToTransparent();
  } catch (e) {
    log('di.dart: systemUIModeConfiguration => ${e.toString()}');
  }
}

Future<void> getPackageInfo() async {
  try {
    final packageInfo = await PackageInfo.fromPlatform();
    AppConstants.packageName = packageInfo.packageName;
    AppConstants.version = packageInfo.version;
    AppConstants.buildNumber = packageInfo.buildNumber;
  } catch (e) {
    log('di.dart: getPackageInfo => ${e.toString()}');
  }
}
