import 'package:flutter/material.dart';

class SettingsCountCard extends StatelessWidget {
  const SettingsCountCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.person_pin_circle_outlined,
            size: 35,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Text(
            'Ajustes de cuenta',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          )),
          Icon(
            Icons.mode_edit_outline_rounded,
            size: 35,
          )
        ],
      ),
    );
  }
}

class SettingsManyCard extends StatelessWidget {
  const SettingsManyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.language_outlined,
                size: 35,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Text(
                'Idioma',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              )),
              Icon(
                Icons.navigate_next_rounded,
                size: 35,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.message,
                size: 35,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Text(
                'Soporte',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              )),
              Icon(
                Icons.navigate_next_rounded,
                size: 35,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.star_border_outlined,
                size: 35,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Text(
                'Calificanos',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              )),
              Icon(
                Icons.navigate_next_rounded,
                size: 35,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.upload,
                size: 35,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Text(
                'Nueva versión',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              )),
              Icon(
                Icons.navigate_next_rounded,
                size: 35,
              )
            ],
          ),
        ],
      ),
    );
  }
}
