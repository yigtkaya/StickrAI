class AppData {
  static final AppData _appData = AppData._internal();

  bool entitlementIsActive = false;
  String appUserID = '';
  int dailyUsageLimit = 0;

  factory AppData() {
    return _appData;
  }
  AppData._internal();
}

final appData = AppData();
