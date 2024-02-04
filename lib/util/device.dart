import 'dart:io' show Platform;

import 'package:flutter/material.dart';

/// The class OS provides static boolean variables to check the current operating system.
class Device {
  static bool isAndroid = Platform.isAndroid;
  static bool isIOS = Platform.isIOS;
  static bool isLinux = Platform.isLinux;
  static bool isMacOS = Platform.isMacOS;
  static bool isWindows = Platform.isWindows;

  static bool isDarkMode(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark;
  }
}
