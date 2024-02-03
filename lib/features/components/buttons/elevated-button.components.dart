import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  final String label;
  final double? width;
  final bool? block;
  final Function()? onPressed;
  final IconData? icon;
  const AppElevatedButton(
      {super.key,
      required this.label,
      this.width,
      this.block = false,
      this.onPressed,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: block! ? double.infinity : width,
      child: icon != null
          ? ElevatedButton.icon(
              onPressed: onPressed, icon: Icon(icon), label: Text(label))
          : ElevatedButton(onPressed: onPressed, child: Text(label)),
    );
  }
}
