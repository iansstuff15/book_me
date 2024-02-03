import 'package:book_me/config/sizes.config.dart';
import 'package:book_me/features/components/buttons/elevated-button.components.dart';
import 'package:book_me/features/components/cards/activity-card.components.dart';
import 'package:book_me/features/components/cards/places-card.components.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppElevatedButton(
          label: "Where to?",
          onPressed: () {},
          icon: Icons.search,
          block: true,
        ),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(AppSizes.extraSmall),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 34, 34, 34),
                      borderRadius: BorderRadius.circular(AppSizes.extraLarge6),
                    ),
                    child: const Icon(
                      Icons.home,
                      color: Color.fromARGB(255, 171, 170, 170),
                    ),
                  ),
                  title: const Text("Location Label"),
                  subtitle: const Text("Location Address"),
                ),
            separatorBuilder: (context, index) => const SizedBox(),
            itemCount: 2),
        Text("Most Recent Ride",
            style: Theme.of(context).textTheme.headlineSmall),
        ActivityCard(),
      ],
    );
  }
}
