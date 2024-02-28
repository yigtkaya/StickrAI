import 'dart:io' show Platform;

import 'package:device_info_plus/device_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionHandler {
  Future<void> requestGalleryPermission() async {
    // check if already have permission
    final isGranted = await Permission.photos.status.isGranted;
    if (isGranted) return;

    if (Platform.isAndroid) {
      final deviceInfo = DeviceInfoPlugin();
      final androidInfo = await deviceInfo.androidInfo;
      if (androidInfo.version.sdkInt >= 33) {
        await Permission.photos.request().then((value) => value.isGranted);
      } else {
        await Permission.storage.status.isGranted;
      }
    } else {
      await Permission.photos.request();
    }
  }

  Future<void> requestNotificationPermission() async {
    final isGranted = await Permission.notification.status.isGranted;
    if (isGranted) return;

    await Permission.notification.request();
  }
}
