import 'package:timelines/timelines.dart';
import 'package:book_me/config/font-weight.dart';
import 'package:book_me/config/sizes.config.dart';
import 'package:book_me/features/components/buttons/elevated-button.components.dart';
import 'package:book_me/features/components/buttons/outlined-button.components.dart';
import 'package:flutter/material.dart';

class VehicleCard extends StatelessWidget {
  String vehicleName;
  String image;
  VehicleCard({super.key, required this.vehicleName, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
          padding: const EdgeInsets.all(AppSizes.small),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        vehicleName,
                        style: const TextStyle(
                            fontWeight: AppFontWeight.bold,
                            fontSize: AppSizes.small,
                            color: Colors.grey),
                      ),
                      const Text(
                        '₱ 100.00',
                        style: TextStyle(
                            fontWeight: AppFontWeight.bold,
                            fontSize: AppSizes.medium),
                      ),
                    ],
                  ),
                  Image.asset(
                    image,
                    width: 70,
                    height: 70,
                  ),
                ],
              ),
              TextButton(onPressed: () {}, child: const Text("Charge Details"))
            ],
          )),
    );
  }
}
