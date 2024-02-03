import 'package:book_me/config/app.config.dart';
import 'package:book_me/config/sizes.config.dart';
import 'package:book_me/features/components/buttons/elevated-button.components.dart';
import 'package:book_me/features/components/home-tabs/food-tab.component.dart';
import 'package:book_me/features/components/home-tabs/rides-tab.component.dart';
import 'package:book_me/features/components/scaffold.components.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle tabTextStyle = const TextStyle(
      fontSize: AppSizes.small,
      fontWeight: FontWeight.bold,
    );

    return DefaultTabController(
        length: 2,
        child: AppScaffold(
          bottomWidget: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.house),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.grip),
                label: 'Services',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.receipt),
                label: 'Activity',
              ),
            ],
          ),
          appBar: AppBar(
            toolbarHeight: 100,
            actions: [
              Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.all(AppSizes.small),
                  margin: const EdgeInsets.only(right: AppSizes.small),
                  child: Icon(
                    FontAwesomeIcons.user,
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ))
            ],
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppIcon,
                const SizedBox(
                  height: AppSizes.small,
                ),
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
                          "Ride",
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
              ],
            ),
          ),
          children: [
            Expanded(
              child: const TabBarView(
                children: [
                  HomeTab(),
                  FoodTab(),
                ],
              ),
            ),
          ],
        ));
  }
}
