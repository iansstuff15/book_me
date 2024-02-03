import 'package:book_me/config/sizes.config.dart';
import 'package:book_me/config/themes/light/text.theme.dart';
import 'package:flutter/material.dart';

ThemeData lightAppTheme = ThemeData(
  textTheme: textLightTheme,
  primaryColor: Colors.black,
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
  tabBarTheme: const TabBarTheme(
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      indicatorColor: Colors.black,
      dividerColor: Colors.transparent),
  listTileTheme: const ListTileThemeData(
      titleTextStyle: TextStyle(
          fontSize: AppSizes.small,
          color: Colors.black,
          fontWeight: FontWeight.bold),
      contentPadding: EdgeInsets.all(0),
      subtitleTextStyle: TextStyle(color: Colors.grey)),
  cardTheme: const CardTheme(
    shape: RoundedRectangleBorder(
        side: BorderSide(color: Color.fromARGB(255, 214, 214, 214), width: 1),
        borderRadius: BorderRadius.all(Radius.circular(AppSizes.extraSmall))),
    elevation: 0,
    margin: EdgeInsets.all(AppSizes.extraSmall),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    centerTitle: false,
    titleTextStyle: TextStyle(
        fontSize: AppSizes.medium,
        color: Colors.black,
        fontWeight: FontWeight.bold),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.grey,
    backgroundColor: Colors.white,
    elevation: 1,
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.black,
    ),
  ),
);
