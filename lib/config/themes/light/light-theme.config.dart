import 'package:book_me/config/sizes.config.dart';
import 'package:book_me/config/themes/light/text.theme.dart';
import 'package:flutter/material.dart';

ThemeData lightAppTheme = ThemeData(
  textTheme: textLightTheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.black,
      side: const BorderSide(color: Colors.black),
    ),
  ),
);
