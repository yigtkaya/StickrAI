// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAXDQNOpVKH4L42cHKLI_6KbcKoAlUUJek',
    appId: '1:499660139841:web:4cb140dff4260e04c705c0',
    messagingSenderId: '499660139841',
    projectId: 'parakolay-merchant-dev',
    authDomain: 'parakolay-merchant-dev.firebaseapp.com',
    storageBucket: 'parakolay-merchant-dev.appspot.com',
    measurementId: 'G-E11RSEM5WQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBGVpjddGUEVy7gKEWHalWbS2rvU7GxeuA',
    appId: '1:499660139841:android:8d0cc93bf02ae089c705c0',
    messagingSenderId: '499660139841',
    projectId: 'parakolay-merchant-dev',
    storageBucket: 'parakolay-merchant-dev.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBbp4Fy0pv05I11aRxUpODl_58-LS0-j4w',
    appId: '1:499660139841:ios:c5a9b9feaa9adab3c705c0',
    messagingSenderId: '499660139841',
    projectId: 'parakolay-merchant-dev',
    storageBucket: 'parakolay-merchant-dev.appspot.com',
    iosBundleId: 'com.parakolay.merchant.ios.dev',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBbp4Fy0pv05I11aRxUpODl_58-LS0-j4w',
    appId: '1:499660139841:ios:bd2267d0e07292f8c705c0',
    messagingSenderId: '499660139841',
    projectId: 'parakolay-merchant-dev',
    storageBucket: 'parakolay-merchant-dev.appspot.com',
    iosBundleId: 'com.example.parakolayMerchant.RunnerTests',
  );
}
