import 'package:timelines/timelines.dart';
import 'package:book_me/config/font-weight.dart';
import 'package:book_me/config/sizes.config.dart';
import 'package:book_me/features/components/buttons/elevated-button.components.dart';
import 'package:book_me/features/components/buttons/outlined-button.components.dart';
import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
          padding: const EdgeInsets.all(AppSizes.small),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vehicle',
                        style: TextStyle(
                            fontWeight: AppFontWeight.bold,
                            fontSize: AppSizes.small,
                            color: Colors.grey),
                      ),
                      Text(
                        'Now',
                        style: TextStyle(
                            fontWeight: AppFontWeight.bold,
                            fontSize: AppSizes.medium),
                      ),
                      Text(
                        'June 12, 2021, 12:00 PM',
                        style: TextStyle(
                            fontWeight: AppFontWeight.bold,
                            fontSize: AppSizes.extraSmall,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/car.png',
                    width: 70,
                    height: 70,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: AppSizes.small),
                child: Timeline.tileBuilder(
                  physics: const NeverScrollableScrollPhysics(),
                  theme: TimelineThemeData(
                    color: Theme.of(context).textTheme.bodySmall!.color,
                    nodePosition: 0,
                    connectorTheme: const ConnectorThemeData(
                      space: 30.0,
                    ),
                  ),
                  shrinkWrap: true,
                  builder: TimelineTileBuilder.fromStyle(
                    contentsAlign: ContentsAlign.basic,
                    contentsBuilder: (context, index) => ListTile(
                      title: Text('Location Label'),
                      subtitle: Text('Location Address'),
                    ),
                    itemCount: 3,
                  ),
                ),
              ),
              Row(
                children: [
                  AppElevatedButton(
                    label: "Book again",
                    onPressed: () {},
                  ),
                  const SizedBox(width: AppSizes.small),
                  AppOutlineddButton(
                      label: "Book in reverse", onPressed: () {}),
                ],
              ),
              TextButton(onPressed: () {}, child: Text("Booking details"))
            ],
          )),
    );
  }
}
