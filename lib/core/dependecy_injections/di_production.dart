import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:stickerai/core/dependecy_injections/global_di_holders.dart';
import 'package:stickerai/core/firebase/firebase_options.dart';
import 'package:stickerai/store_version_check/store_config.dart';

Future<void> setupProdDI() async {
  //init local storage
  await hiveStorage.initialize();
  await firebaseConfig();
}

Future<void> firebaseConfig() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
    name: "stickerai-70831",
  );
  FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
  await FirebaseAnalytics.instance.logAppOpen();
}

Future<void> configureSDK() async {
  // Enable debug logs before calling `configure`.
  await Purchases.setLogLevel(LogLevel.debug);

  PurchasesConfiguration configuration;

  configuration = PurchasesConfiguration(StoreConfig.instance.apiKey)
    ..appUserID = null
    ..observerMode = false;

  await Purchases.configure(configuration);
  await Purchases.enableAdServicesAttributionTokenCollection();
}
