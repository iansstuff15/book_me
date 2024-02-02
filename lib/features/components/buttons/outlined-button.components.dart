import 'package:flutter/material.dart';

class AppOutlineddButton extends StatelessWidget {
  final String label;
  final double? width;
  final bool? block;
  final Function()? onPressed;
  const AppOutlineddButton(
      {super.key,
      required this.label,
      this.width,
      this.block = false,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: block! ? double.infinity : width,
      child: OutlinedButton(onPressed: onPressed, child: Text(label)),
    );
  }
}
