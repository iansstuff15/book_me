import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  final String label;
  final double? width;
  final bool? block;
  final Function()? onPressed;
  const AppElevatedButton(
      {super.key,
      required this.label,
      this.width,
      this.block = false,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: block! ? double.infinity : width,
      child: ElevatedButton(onPressed: onPressed, child: Text(label)),
    );
  }
}
