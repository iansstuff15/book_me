import 'package:book_me/config/sizes.config.dart';
import 'package:book_me/features/components/buttons/elevated-button.components.dart';
import 'package:book_me/features/components/buttons/outlined-button.components.dart';
import 'package:book_me/features/components/cards/vehicle-card.dart';
import 'package:book_me/features/components/layout/scaffold.components.dart';
import 'package:book_me/features/components/map/map.component.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class BookRidesPage extends StatefulWidget {
  static const String routeName = '/book/rides';
  const BookRidesPage({super.key});

  @override
  State<BookRidesPage> createState() => _BookRidesPageState();
}

class _BookRidesPageState extends State<BookRidesPage> {
  int step = 0;
  List<String> steps = ['Choose a ride', 'Looking for rider', 'Ride details'];
  List<String> vehicles = [
    'Car 4 seater',
    'Car 8 seater',
    'Taxi',
    'Motorcycle'
  ];
  List<String> vehicleImages = [
    'assets/images/car.png',
    'assets/images/car.png',
    'assets/images/taxi.png',
    'assets/images/scooter.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: step == 0
          ? Padding(
              padding: const EdgeInsets.only(
                  left: AppSizes.small, right: AppSizes.small),
              child: AppElevatedButton(
                onPressed: () => {setState(() => step++)},
                label: 'Book ride',
              ))
          : Padding(
              padding: const EdgeInsets.only(
                  left: AppSizes.small, right: AppSizes.small),
              child: AppOutlineddButton(
                onPressed: () => {setState(() => step--)},
                label: 'Cancel',
              )),
      body: Stack(children: [
        const Maps(),
        SafeArea(
            child: Positioned(
                child: Row(
          children: [
            IconButton(
              onPressed: () => {Navigator.pop(context)},
              icon: IconButton(
                icon: Container(
                    padding: EdgeInsets.all(AppSizes.small),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(
                      Icons.arrow_back,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    )),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ))),
        Positioned(
            bottom: 0,
            child: Container(
                width: AppSizes.getDeviceWidth(context),
                height: step == 1
                    ? 64 + AppSizes.extraLarge2
                    : AppSizes.getPercentOfDeviceHeight(
                        context: context, percent: 0.5),
                padding: const EdgeInsets.all(AppSizes.small),
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(AppSizes.small),
                        topRight: Radius.circular(AppSizes.small))),
                child: Column(
                  children: [
                    Text(steps[step],
                        style: Theme.of(context).textTheme.headlineSmall),
                    step == 0
                        ? SizedBox(
                            height: AppSizes.getPercentOfDeviceHeight(
                                context: context, percent: 0.4),
                            child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                physics: const BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) => VehicleCard(
                                      vehicleName: vehicles[index],
                                      image: vehicleImages[index],
                                    ),
                                itemCount: vehicles.length),
                          )
                        : Container(),
                    step == 1
                        ? Container(
                            padding: const EdgeInsets.all(AppSizes.small),
                            height: AppSizes.extraLarge2,
                            width: AppSizes.extraLarge2,
                            child: const LoadingIndicator(
                                indicatorType: Indicator.ballScaleMultiple,
                                colors: [Colors.grey],
                                strokeWidth: 0.5,
                                backgroundColor: Colors.transparent,
                                pathBackgroundColor: Colors.transparent),
                          )
                        : Container()
                  ],
                )))
      ]),
    );
  }
}
