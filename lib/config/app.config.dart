import 'package:book_me/config/routes.config.dart';
import 'package:book_me/config/sizes.config.dart';
import 'package:book_me/config/themes/dark/dark-theme.config.dart';
import 'package:book_me/config/themes/light/light-theme.config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

MaterialApp bookMeApp = MaterialApp(
  title: 'Book Me',
  theme: lightAppTheme,
  darkTheme: darkAppTheme,
  routes: appRoutes,
  initialRoute: initialRoute,
);

String appBlackIcon = 'assets/icons/app.svg';
Widget AppIcon = SvgPicture.asset(appBlackIcon,
    width: AppSizes.medium,
    height: AppSizes.medium,
    colorFilter:
        const ColorFilter.mode(Colors.transparent, BlendMode.difference),
    semanticsLabel: 'Book me, app icon');
