import 'package:book_me/config/app.config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BookMe());
}

class BookMe extends StatelessWidget {
  const BookMe({super.key});

  @override
  Widget build(BuildContext context) {
    return bookMeApp;
  }
}
