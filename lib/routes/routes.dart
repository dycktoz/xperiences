import 'package:flutter/material.dart';
import 'package:xperiences/ui/pages/device_location_page.dart';
import 'package:xperiences/ui/pages/home_page.dart';
import 'package:xperiences/ui/pages/login_page.dart';
import 'package:xperiences/ui/pages/register_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),
  'home': (_) => HomePage(),
  'location': (_) => DeviceLocationPage(),
};
