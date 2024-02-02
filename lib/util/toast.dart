import 'package:book_me/config/sizes.config.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class Toast {
  static ToastificationStyle style = ToastificationStyle.fillColored;
  static Alignment alignment = Alignment.topCenter;
  static bool showProgress = false;
  static Duration toastDuration = const Duration(seconds: 5);
  static BorderRadiusGeometry toastBorderRadius =
      BorderRadius.circular(AppSizes.small);
  static CloseButtonShowType showCancelButton = CloseButtonShowType.none;
  static bool closeOnClick = false;

  static void showError(
      {required String message, required BuildContext context}) {
    toastification.show(
      style: style,
      type: ToastificationType.error,
      context: context,
      title: const Text('Error'),
      alignment: alignment,
      description: Text(message),
      showProgressBar: showProgress,
      autoCloseDuration: toastDuration,
      borderRadius: toastBorderRadius,
      closeButtonShowType: showCancelButton,
      closeOnClick: closeOnClick,
    );
  }

  static void showSuccess(
      {required String message, required BuildContext context}) {
    toastification.show(
      style: style,
      type: ToastificationType.success,
      context: context,
      title: const Text('Error'),
      alignment: alignment,
      description: Text(message),
      showProgressBar: showProgress,
      autoCloseDuration: toastDuration,
      borderRadius: toastBorderRadius,
      closeButtonShowType: showCancelButton,
      closeOnClick: closeOnClick,
    );
  }

  static void showInfo(
      {required String message, required BuildContext context}) {
    toastification.show(
      style: style,
      type: ToastificationType.info,
      context: context,
      title: const Text('Error'),
      alignment: alignment,
      description: Text(message),
      showProgressBar: showProgress,
      autoCloseDuration: toastDuration,
      borderRadius: toastBorderRadius,
      closeButtonShowType: showCancelButton,
      closeOnClick: closeOnClick,
    );
  }

  static void showWarning(
      {required String message, required BuildContext context}) {
    toastification.show(
      style: style,
      type: ToastificationType.warning,
      context: context,
      title: const Text('Error'),
      alignment: alignment,
      description: Text(message),
      showProgressBar: showProgress,
      autoCloseDuration: toastDuration,
      borderRadius: toastBorderRadius,
      closeButtonShowType: showCancelButton,
      closeOnClick: closeOnClick,
    );
  }
}
