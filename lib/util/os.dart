import 'dart:io' show Platform;

/// The class OS provides static boolean variables to check the current operating system.
class OS {
  static bool isAndroid = Platform.isAndroid;
  static bool isIOS = Platform.isIOS;
  static bool isLinux = Platform.isLinux;
  static bool isMacOS = Platform.isMacOS;
  static bool isWindows = Platform.isWindows;
}
