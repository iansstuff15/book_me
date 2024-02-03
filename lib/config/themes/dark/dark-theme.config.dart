import 'package:book_me/config/font-weight.dart';
import 'package:book_me/config/sizes.config.dart';
import 'package:book_me/config/themes/dark/text.theme.dart';
import 'package:flutter/material.dart';

ThemeData darkAppTheme = ThemeData(
  scaffoldBackgroundColor: Colors.black,
  primaryColor: Colors.white,
  textTheme: textDarkTheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
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
  tabBarTheme: const TabBarTheme(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.grey,
      indicatorColor: Colors.white,
      dividerColor: Colors.transparent),
  listTileTheme: const ListTileThemeData(
    titleTextStyle:
        TextStyle(color: Colors.white, fontWeight: AppFontWeight.bold),
    subtitleTextStyle:
        TextStyle(color: Colors.grey, fontWeight: AppFontWeight.regular),
    contentPadding: EdgeInsets.all(0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(0)),
    ),
  ),
  cardTheme: const CardTheme(
    color: Color.fromARGB(255, 19, 19, 19),
    elevation: 0,
    margin: EdgeInsets.all(AppSizes.extraSmall),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.black,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.grey,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
    elevation: 0,
    centerTitle: false,
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.white,
    ),
  ),
);
