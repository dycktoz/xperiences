import 'package:flutter/material.dart';

class LogoLogin extends StatelessWidget {
  final String text;
  final String welcome;

  const LogoLogin({super.key, required this.text, required this.welcome});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Image(image: AssetImage('assets/login/LogoLogin.png')),
          SizedBox(
            height: 20,
          ),
          Text(
            welcome,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 70, vertical: 30),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black38,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
