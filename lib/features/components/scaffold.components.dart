import 'package:book_me/config/sizes.config.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final List<Widget> children;
  final CrossAxisAlignment? crossAxisAlignment;
  const AppScaffold(
      {super.key,
      required this.children,
      this.crossAxisAlignment = CrossAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.medium),
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: AppSizes.getPercentOfDeviceHeight(
                        context: context, percent: .85),
                    maxWidth: AppSizes.getDeviceWidth(context),
                  ),
                  child: Column(
                    crossAxisAlignment: crossAxisAlignment!,
                    children: children,
                  ),
                ),
              ))),
    );
  }
}
