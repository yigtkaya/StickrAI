// ignore_for_file: always_use_package_imports
import 'dart:io';
import 'dart:math' as math;

import 'package:package_info_plus/package_info_plus.dart';

import 'app_gallery_service.dart';
import 'app_store_service.dart';
import 'play_store_service.dart';
import 'store_info.dart';

class StoreVersionCheck {
  StoreVersionCheck({
    this.checkHuawei = false,
    this.appId = '',
    this.appName = '',
    this.minVersion,
  });

  final bool checkHuawei;
  final String appId;
  final String appName;
  final String? minVersion;
  String packageName = '';

  Future<StoreInfo> getStoreInfo() async {
    final packageInfo = await PackageInfo.fromPlatform();
    packageName = packageInfo.packageName.replaceAll('.dev', '').replaceAll('.stg', '');
    final appInfo = StoreInfo();
    appInfo.appId = appId;
    appInfo.currentVersion = packageInfo.version;
    appInfo.packageName = packageName;
    appInfo.storeLink = _getStoreLink();
    appInfo.storeVersion = await _getStoreVersion();
    appInfo.needUpdate = _shouldUpdate(appInfo.currentVersion, appInfo.storeVersion);
    return appInfo;
  }

  String _getStoreLink() {
    if (Platform.isIOS) {
      return "https://apps.apple.com/tr/app/$appName/id$appId";
    } else {
      if (checkHuawei) {
        return "https://appgallery.huawei.com/app/C$appId";
      } else {
        return "https://play.google.com/store/apps/details?id=$packageName";
      }
    }
  }

  Future<String> _getStoreVersion() async {
    if (Platform.isIOS) {
      final appStore = AppStoreService(bundleId: packageName);
      return await appStore.getStoreVersion();
    } else {
      if (checkHuawei) {
        final appGallery = AppGalleryService(appId: appId, clientSecret: '', clientId: '');
        return await appGallery.getStoreVersion();
      } else {
        final playStore = PlayStoreService(packageName: packageName);
        return await playStore.getStoreVersion();
      }
    }
  }

  bool _shouldUpdate(String currentVersion, String newVersion) {
    newVersion = minVersion != null ? minVersion! : newVersion;
    final currentVersionList = currentVersion.split(".").map((e) => int.tryParse(e) ?? 0).toList();
    final newVersionList = newVersion.split(".").map((e) => int.tryParse(e) ?? 0).toList();

    final currentVersionSize = currentVersionList.length;
    final newVersionSize = newVersionList.length;
    final int maxSize = math.max(currentVersionSize, newVersionSize);

    for (var i = 0; i < maxSize; i++) {
      if ((i < currentVersionSize ? currentVersionList[i] : 0) > (i < newVersionSize ? newVersionList[i] : 0)) {
        return false;
      } else if ((i < currentVersionSize ? currentVersionList[i] : 0) < (i < newVersionSize ? newVersionList[i] : 0)) {
        return true;
      }
    }
    return false;
  }
}
