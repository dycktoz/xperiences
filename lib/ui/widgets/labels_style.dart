import 'package:flutter/material.dart';

class LabesStyle extends StatelessWidget {
  final String label;
  final double fontS;
  final bool fontwB;
  const LabesStyle(
      {Key? key, required this.label, this.fontS = 15, required this.fontwB})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(right: 20, left: 20, top: 20),
        child: Text(
          'Mantente al dia con las noticias de $label',
          style: TextStyle(
              fontSize: fontS,
              fontWeight: fontwB ? FontWeight.bold : FontWeight.normal),
        ));
  }
}

class LabesStyle2 extends StatelessWidget {
  final String label;
  final double fontS;
  final bool fontwW;
  const LabesStyle2(
      {Key? key, required this.label, this.fontS = 15, required this.fontwW})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Text(
          label,
          style: TextStyle(
              fontSize: fontS,
              fontWeight: fontwW ? FontWeight.w400 : FontWeight.normal),
        ));
  }
}

class LabesStyleInput extends StatelessWidget {
  final String label;
  final double fontS;
  final bool fontwB;
  const LabesStyleInput(
      {Key? key, required this.label, this.fontS = 15, required this.fontwB})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            Text(
              'Al parecer estas en ',
              style: TextStyle(
                fontSize: fontS,
              ),
            ),
            Text(
              label,
              style: TextStyle(
                  fontSize: fontS,
                  fontWeight: fontwB ? FontWeight.bold : FontWeight.normal),
            ),
          ],
        ));
  }
}
