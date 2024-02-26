import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:stickerai/core/dependecy_injections/global_di_holders.dart';
import 'package:stickerai/core/firebase/firebase_options.dart';
import 'package:stickerai/core/local_storage/hive_helper.dart';

Future<void> setupDevDI() async {
  //init local storage
  await hiveStorage.initialize(boxName: BoxName.developmentBox);

  await firebaseConfig();
}

Future<void> firebaseConfig() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
  await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
  await FirebaseAnalytics.instance.logAppOpen();
}
