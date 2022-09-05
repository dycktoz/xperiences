import 'package:flutter/material.dart';

class NoticeCard extends StatelessWidget {
  final String assetimg;
  final String label;
  final String label1;

  const NoticeCard({
    Key? key,
    required this.label,
    required this.label1,
    required this.assetimg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      padding: EdgeInsets.only(left: 20, right: 20, top: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black38),
          borderRadius: BorderRadius.circular(
            15,
          ),
          color: Colors.white70),
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(assetimg), fit: BoxFit.cover)),
            width: 70,
            height: 70,
          ),
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.55,
                height: 55,
                child: Text(
                  label,
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.55,
                height: 33,
                child: Text(label1,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
