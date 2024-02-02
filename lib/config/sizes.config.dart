import 'package:flutter/material.dart';

class AppSizes {
  static const extraSmall = 8.0;
  static const small = extraSmall * 2;
  static const medium = small * 2;
  static const large = medium * 2;
  static const extraLarge = large * 2;
  static const extraLarge2 = extraLarge * 2;
  static const extraLarge3 = extraLarge2 * 2;
  static const extraLarge4 = extraLarge3 * 2;
  static const extraLarge5 = extraLarge4 * 2;
  static const extraLarge6 = extraLarge5 * 2;

  static double getDeviceWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getDeviceHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getPercentOfDeviceWidth(
      {required BuildContext context, required double percent}) {
    return getDeviceWidth(context) * percent;
  }

  static getPercentOfDeviceHeight(
      {required BuildContext context, required double percent}) {
    return getDeviceHeight(context) * percent;
  }
}
