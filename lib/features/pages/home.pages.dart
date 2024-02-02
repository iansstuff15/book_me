import 'package:book_me/config/app.config.dart';
import 'package:book_me/config/sizes.config.dart';
import 'package:book_me/features/components/buttons/elevated-button.components.dart';
import 'package:book_me/features/components/home-tabs/food-tab.component.dart';
import 'package:book_me/features/components/home-tabs/rides-tab.component.dart';
import 'package:book_me/features/components/scaffold.components.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle tabTextStyle = const TextStyle(
      fontSize: AppSizes.small,
      fontWeight: FontWeight.bold,
    );

    return AppScaffold(
      children: [
        AppIcon,
        const SizedBox(
          height: AppSizes.medium,
        ),
        DefaultTabController(
            length: 2,
            child: Column(
              children: [
                TabBar(
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  tabs: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/car.png',
                          width: AppSizes.medium,
                          height: AppSizes.medium,
                        ),
                        Text(
                          "Rides",
                          style: tabTextStyle,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/food.png',
                          width: AppSizes.medium,
                          height: AppSizes.medium,
                        ),
                        Text(
                          "Food",
                          style: tabTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: AppSizes.getPercentOfDeviceHeight(
                      context: context, percent: 0.85),
                  child: const TabBarView(
                    children: [
                      HomeTab(),
                      FoodTab(),
                    ],
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
