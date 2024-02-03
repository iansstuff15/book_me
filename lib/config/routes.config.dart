import 'package:book_me/features/pages/book.pages.dart';
import 'package:book_me/features/pages/home.pages.dart';
import 'package:book_me/features/pages/welcome.pages.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  BookPage.routeName: (context) => const BookPage(),
  WelcomePage.routeName: (context) => const WelcomePage(),
  HomePage.routeName: (context) => const HomePage(),
};

String initialRoute = HomePage.routeName;
