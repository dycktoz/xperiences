import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xperiences/providers/ui_provider.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final index = uiProvider;
    return Container(
      width: 100,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: BottomNavigationBar(
          onTap: (int i) => index.selectedMenuOpt = i,
          currentIndex: index.selectedMenuOpt,
          backgroundColor: Colors.transparent,
          elevation: 100,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.green,
          items: [
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.other_houses_outlined,
                  size: 35,
                )),
            BottomNavigationBarItem(
              label: 'Discover',
              icon: Icon(Icons.calendar_month_outlined, size: 35),
            ),
            BottomNavigationBarItem(
                label: 'Settings', icon: Icon(Icons.person_outline, size: 35)),
          ]),
    );
  }
}
