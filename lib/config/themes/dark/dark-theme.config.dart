import 'package:book_me/config/themes/dark/text.theme.dart';
import 'package:flutter/material.dart';

ThemeData darkAppTheme = ThemeData(
  scaffoldBackgroundColor: Colors.black,
  textTheme: textDarkTheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.white,
      side: const BorderSide(color: Colors.white),
    ),
  ),
);
