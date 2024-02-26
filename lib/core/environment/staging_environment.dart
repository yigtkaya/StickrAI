part of 'environment.dart';

class StagingEnvironment with Environment {
  @override
  Color get bannerColor => Colors.blue;

  @override
  String get bannerName => 'STG';

  @override
  String get apiBaseUrl => 'https://merchant-api-test.parakolay.com/v1';

  @override
  String get webBaseUrl => "https://merchant.parakolay.com";

  // @override
  // String webUrlGenerate({required String link}) => '$webBaseUrl/$link?lang=$langUrlCode-$localeCode';

  // @override
  // String webUrlAddLocale({required String link}) => '$link?lang=$langUrlCode-$localeCode';
}
