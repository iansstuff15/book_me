import 'dart:developer';

import 'package:book_me/config/sizes.config.dart';
import 'package:book_me/util/toast.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';
import 'package:url_launcher/url_launcher.dart';

class Launch {
  static String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  static void url({required String url, required BuildContext context}) async {
    try {
      log('Launching $url');
      await launchUrl(Uri.parse(url));
    } catch (e) {
      // ignore: use_build_context_synchronously
      Toast.showError(message: e.toString(), context: context);
      log(e.toString());
      throw 'Could not launch $url';
    }
  }

  static void email(
      {required String email, required BuildContext context}) async {
    try {
      log('Launching $email');
      final Uri emailLaunchUri = Uri(
        scheme: 'mailto',
        path: email,
        query: encodeQueryParameters(<String, String>{
          'subject': 'Reach out Ian from Book Me App',
        }),
      );

      await launchUrl(emailLaunchUri);
    } catch (e) {
      // ignore: use_build_context_synchronously
      Toast.showError(message: e.toString(), context: context);
      log(e.toString());
      throw 'Could not launch $email';
    }
  }
}
