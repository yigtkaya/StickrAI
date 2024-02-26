import 'dart:io';

import 'package:flutter/services.dart';

const channel = "ch/hms_gms_service_check";
const String isHmsAvailableMethod = "hms_available";
const String isGmsAvailableMethod = "gms_available";
const String isHuaweiDeviceMethod = "is_huawei";

const MethodChannel _channel = MethodChannel(channel);

class HmsGmsCheckService {
  ///check only huawei services available
  static Future<bool> isHMSAvailable() async {
    if (!Platform.isAndroid) return false;

    return await _channel.invokeMethod(isHmsAvailableMethod);
  }

  ///check only gms services available
  static Future<bool> isGMSAvailable() async {
    if (!Platform.isAndroid) return false;

    return await _channel.invokeMethod(isGmsAvailableMethod);
  }

  ///check if device is a huawei device based on service availabilities
  static Future<bool> isHuaweiDevice() async {
    if (!Platform.isAndroid) return false;

    return await _channel.invokeMethod(isHmsAvailableMethod);
  }
}
