import 'package:book_me/config/app.config.dart';
import 'package:book_me/config/font-weight.dart';
import 'package:book_me/config/sizes.config.dart';
import 'package:book_me/features/components/buttons/elevated-button.components.dart';
import 'package:book_me/features/components/scaffold.components.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  static const String routeName = '/welcome';
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      children: [
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/car.png',
              width: AppSizes.getPercentOfDeviceWidth(
                  context: context, percent: .4),
            ),
            Image.asset(
              'assets/images/delivery.png',
              width: AppSizes.getPercentOfDeviceWidth(
                  context: context, percent: .4),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/food.png',
              width: AppSizes.getPercentOfDeviceWidth(
                  context: context, percent: .4),
            ),
            Image.asset(
              'assets/images/package.png',
              width: AppSizes.getPercentOfDeviceWidth(
                  context: context, percent: .4),
            ),
          ],
        ),
        const Spacer(),
        AppIcon,
        const SizedBox(
          height: AppSizes.small,
        ),
        const Text(
          'Need to move?',
          style: TextStyle(
              fontWeight: AppFontWeight.bold, fontSize: AppSizes.medium),
        ),
        const Text(
          'Book Me',
          style: TextStyle(
              fontWeight: AppFontWeight.black, fontSize: AppSizes.large),
        ),
        SizedBox(
          height: AppSizes.small,
        ),
        AppElevatedButton(
          block: true,
          label: 'Get Started',
          onPressed: () => {},
        )
      ],
    );
  }
}
