import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String ruta;
  final String txt;
  final String txtBt;

  const Labels(
      {Key? key, required this.ruta, required this.txt, required this.txtBt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            txt,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            child: Text(
              txtBt,
              style: TextStyle(color: Colors.green, fontSize: 20),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, this.ruta);
            },
          )
        ],
      ),
    );
  }
}
