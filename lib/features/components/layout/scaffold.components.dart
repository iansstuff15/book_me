import 'package:book_me/config/sizes.config.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final List<Widget> children;
  final Widget? bottomWidget;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisAlignment? mainAxisAlignment;
  final PreferredSizeWidget? appBar;
  const AppScaffold(
      {super.key,
      required this.children,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.bottomWidget,
      this.appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      bottomNavigationBar: bottomWidget,
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.small,
              ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth: AppSizes.getDeviceWidth(context),
                      minWidth: AppSizes.getDeviceWidth(context),
                      maxHeight: 38 + AppSizes.getDeviceHeight(context)),
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
