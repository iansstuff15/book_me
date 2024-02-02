import 'package:book_me/config/themes/light/text.theme.dart';
import 'package:flutter/material.dart';

ThemeData lightAppTheme = ThemeData(
  textTheme: textLightTheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
);
