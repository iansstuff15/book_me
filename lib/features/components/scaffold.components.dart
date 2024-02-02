import 'package:book_me/config/sizes.config.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final List<Widget> children;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisAlignment? mainAxisAlignment;
  const AppScaffold(
      {super.key,
      required this.children,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.mainAxisAlignment = MainAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.medium),
              child: SingleChildScrollView(
                child: SizedBox(
                  height: AppSizes.getDeviceHeight(context),
                  width: AppSizes.getDeviceWidth(context),
                  child: Column(
                    mainAxisAlignment: mainAxisAlignment!,
                    crossAxisAlignment: crossAxisAlignment!,
                    children: children,
                  ),
                ),
              ))),
    );
  }
}
