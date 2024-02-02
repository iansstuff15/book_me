import 'package:book_me/features/components/scaffold.components.dart';
import 'package:flutter/material.dart';

class BookPage extends StatelessWidget {
  static const String routeName = '/book';
  const BookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      children: [
        Text('Book Page'),
      ],
    );
  }
}
