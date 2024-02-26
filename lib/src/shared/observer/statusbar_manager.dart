import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

class StatusBarManager {
  static StatusBarManager? _instance;

  StatusBarManager._();

  static StatusBarManager get instance => _instance ??= StatusBarManager._();

  List<String> brightnessDarkPages = [
    "/",
  ];

  Future<void> changeStatusBarBrightness(String pageViewRoute) async {
    await FlutterStatusbarcolor.setStatusBarWhiteForeground(
      !brightnessDarkPages.contains(pageViewRoute),
    );
  }

  Future<void> setStatusBarColorToTransparent() async {
    await FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
  }
}
