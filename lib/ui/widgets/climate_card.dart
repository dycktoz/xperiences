import 'package:flutter/material.dart';

class ClimateCard extends StatelessWidget {
  final String label;
  final String label2;
  final double climatemp;
  const ClimateCard(
      {Key? key,
      required this.label,
      required this.climatemp,
      required this.label2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(200, 255, 255, 255),
        borderRadius: BorderRadius.circular(15),
      ),
      width: MediaQuery.of(context).size.width * 0.42,
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.sunny,
            color: Colors.amber,
            size: 100,
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            width: MediaQuery.of(context).size.width,
            child: Text(
              '$climatemp °C',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Color.fromARGB(255, 68, 189, 117),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      label,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ),
                  Container(
                    child: Text(
                      label2,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
