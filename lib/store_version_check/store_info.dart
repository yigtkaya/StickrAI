class StoreInfo {
  StoreInfo({
    this.currentVersion = '',
    this.appId = '',
    this.packageName = '',
    this.storeVersion = '',
    this.storeLink = '',
    this.needUpdate = false,
    this.forceEnabled = false,
  });
  String appId;
  String packageName;
  String currentVersion;
  String storeVersion;
  String storeLink;
  bool needUpdate;
  bool forceEnabled;

  StoreInfo copyWith({
    String? appId,
    String? packageName,
    String? currentVersion,
    String? storeVersion,
    String? storeLink,
    bool? needUpdate,
    bool? forceEnabled,
  }) {
    return StoreInfo(
      appId: appId ?? this.appId,
      packageName: packageName ?? this.packageName,
      currentVersion: currentVersion ?? this.currentVersion,
      storeVersion: storeVersion ?? this.storeVersion,
      storeLink: storeLink ?? this.storeLink,
      needUpdate: needUpdate ?? this.needUpdate,
      forceEnabled: forceEnabled ?? this.forceEnabled,
    );
  }
}
