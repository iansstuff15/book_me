import 'package:book_me/features/pages/book_rides.pages.dart';
import 'package:book_me/features/pages/home.pages.dart';
import 'package:book_me/features/pages/welcome.pages.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  BookRidesPage.routeName: (context) => const BookRidesPage(),
  WelcomePage.routeName: (context) => const WelcomePage(),
  HomePage.routeName: (context) => const HomePage(),
};

String initialRoute = HomePage.routeName;
