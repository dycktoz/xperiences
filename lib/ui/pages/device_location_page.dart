import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:xperiences/ui/pages/home_page.dart';

class DeviceLocationPage extends StatefulWidget {
  const DeviceLocationPage({Key? key}) : super(key: key);

  @override
  State<DeviceLocationPage> createState() => _DeviceLocationPageState();
}

class _DeviceLocationPageState extends State<DeviceLocationPage> {
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  Future<void> determinatePosition() async {
    Position _position = await _determinePosition();
    await Future.delayed(Duration(milliseconds: 200));
    if (_position != null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => HomePage(
            lat: _position.latitude,
            lon: _position.longitude,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    determinatePosition();
    return Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
