import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xperiences/models/climate_response.dart';
import 'package:xperiences/providers/ui_provider.dart';
import 'package:xperiences/services/climate_service.dart';
import 'package:xperiences/services/localStorage.dart';
import 'package:xperiences/ui/pages/discover_page.dart';
import 'package:xperiences/ui/pages/settings_page.dart';
import 'package:xperiences/ui/pages/welcome_home_page.dart';
import 'package:xperiences/ui/widgets/custom_bottom_navigation.dart';

class HomePage extends StatefulWidget {
  final double? lat;
  final double? lon;
  HomePage({Key? key, this.lat, this.lon}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ClimateService climate = ClimateService();

  ClimateResponse? data;

  String nombre = '';
  String email = '';

  Future getData() async {
    data = await climate.getCurrentClimate(
        lat: widget.lat!.toString(), lon: widget.lon!.toString());
    setState(() {});
  }

  Future getName() async {
    String nameLocal = await LocalStorage().getuser();
    String emailLocal = await LocalStorage().getemail();
    nombre = nameLocal;
    email = emailLocal;
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    getName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(240, 255, 255, 255),
      // drawer: MenuPrincipal(),
      body: _HomePageBody(
        email: email,
        nombre: nombre,
        data: data,
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  final String nombre;
  final String email;
  final dynamic data;
  const _HomePageBody(
      {Key? key, this.data, required this.nombre, required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectedMenuOpt;
    switch (currentIndex) {
      case 0:
        return WelcomeHomePage(
          nombre: nombre,
          data: data,
        );
      case 1:
        return DiscoverPage(
          data: data,
        );

      case 2:
        return SettingsPage(
          name: nombre,
          email: email,
        );

      default:
        return WelcomeHomePage(
          nombre: nombre,
          data: data,
        );
    }
  }
}
