class AppData {
  static final AppData _appData = AppData._internal();

  bool entitlementIsActive = false;
  String appUserID = '';
  int remainingUsageLimit = 0;
  bool isLastActionTime24hAgo = false;

  factory AppData() {
    return _appData;
  }
  AppData._internal();
}

final appData = AppData();
