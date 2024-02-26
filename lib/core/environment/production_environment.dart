part of 'environment.dart';

class ProductionEnvironment with Environment {
  @override
  Color get bannerColor => Colors.green;

  @override
  String get bannerName => 'PROD';

  @override
  String get apiBaseUrl => 'https://merchant-api.parakolay.com/v1';

  @override
  String get webBaseUrl => 'https://merchant.parakolay.com';

  // @override
  // String webUrlGenerate({required String link}) => '$webBaseUrl/$link?lang=$langUrlCode-$localeCode';

  // @override
  // String webUrlAddLocale({required String link}) => '$link?lang=$langUrlCode-$localeCode';
}
