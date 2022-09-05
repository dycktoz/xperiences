import 'package:flutter/material.dart';

class DiscoverCard extends StatelessWidget {
  final VoidCallback ontap;
  final String label;
  final String label1;
  final String assetimg;
  const DiscoverCard(
      {Key? key,
      required this.label,
      required this.label1,
      required this.assetimg,
      required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        width: MediaQuery.of(context).size.width,
        height: 100,
        decoration: BoxDecoration(
          color: Color.fromARGB(250, 255, 255, 255),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(assetimg), fit: BoxFit.cover)),
              width: 70,
              height: 70,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 30,
                    child: Text(
                      '   $label',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color.fromARGB(255, 50, 183, 104),
                        size: 30,
                      ),
                      Expanded(
                        child: Text(label1,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 50, 183, 104)),
                        child: Text('Ver más'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
