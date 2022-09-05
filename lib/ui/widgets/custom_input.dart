import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final Widget formfield;

  const CustomInput({Key? key, required this.formfield}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 244, 244, 244),
                  borderRadius: BorderRadius.circular(15)),
              child: formfield)
        ],
      ),
    );
  }
}
