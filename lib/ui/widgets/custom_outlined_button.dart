import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final Function onpressed;
  final String text;
  final Color color;
  final bool isFilled;
  const CustomOutlinedButton(
      {Key? key,
      required this.onpressed,
      required this.text,
      this.color = Colors.green,
      this.isFilled = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
            side: MaterialStateProperty.all(BorderSide(color: color)),
            backgroundColor: MaterialStateProperty.all(
                isFilled ? color.withOpacity(0.2) : Colors.transparent)),
        onPressed: () => onpressed(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 15,
                color: isFilled ? color : Colors.grey,
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}
