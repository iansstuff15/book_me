import 'package:book_me/config/app.config.dart';
import 'package:book_me/features/components/scaffold.components.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      children: [AppIcon],
    );
  }
}
