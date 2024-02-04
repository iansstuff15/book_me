import 'dart:async';
import 'dart:developer';
import 'package:book_me/util/device.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget {
  const Maps({super.key});

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  String? _mapStyleLight;
  String? _mapStyleDark;
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  void initState() {
    super.initState();
    DefaultAssetBundle.of(context)
        .loadString('assets/maps/light.maps.json')
        .then((string) {
      log('Map style loaded');
      log(string);
      _mapStyleLight = string;
    });
    DefaultAssetBundle.of(context)
        .loadString('assets/maps/dark.maps.json')
        .then((string) {
      log('Map style loaded');
      log(string);
      _mapStyleDark = string;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Device.isDarkMode(context)
        ? GoogleMap(
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              controller.setMapStyle(_mapStyleDark!);
              _controller.complete(controller);
            },
          )
        : GoogleMap(
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              controller.setMapStyle(_mapStyleLight!);
              _controller.complete(controller);
            },
          );
  }
}
