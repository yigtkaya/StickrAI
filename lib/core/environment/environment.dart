import 'package:flutter/material.dart';

part 'development_environment.dart';
part 'production_environment.dart';
part 'staging_environment.dart';

mixin Environment {
  //! Environment based  constant variables
  String get bannerName;
  Color get bannerColor;
  String get apiBaseUrl;
  String get webBaseUrl;

  bool enableDioLogs = true;

  // dynamic variables

  /// langCode is can only be updated from language provider
  /// localeCode is can only be updated from customer region provider
  // String langUrlCode = 'tr';
  // String localeCode = 'TR';
  //int currentLangId = 0;

  // dynamic functions
  // String webUrlGenerate({required String link});
  // String webUrlAddLocale({required String link});

  //common variables

  // numbers 1212
  String appleAppId = '1234567890';

  // app name
  String appleAppName = 'Parakolay Merchant';
}