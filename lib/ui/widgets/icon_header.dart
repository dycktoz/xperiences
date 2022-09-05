import 'package:flutter/material.dart';

class IconHeader extends StatelessWidget {
  final Color color;
  final bool isHome;
  final Function? onPressed;
  final String label;
  IconHeader(
      {Key? key,
      this.onPressed,
      required this.label,
      this.isHome = false,
      this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconHeaderBackground(
          color: isHome ? color : Color.fromARGB(255, 50, 183, 104),
        ),
        SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                isHome
                    ? IconButton(onPressed: () {}, icon: Icon(Icons.menu))
                    : Container(
                        width: 30,
                      ),
                Expanded(
                  child: Text(
                    textAlign: TextAlign.center,
                    isHome ? 'Bienvenido $label' : label,
                    style: TextStyle(
                        fontSize: isHome ? 20 : 18,
                        color: isHome ? Colors.black : Colors.white,
                        fontWeight:
                            isHome ? FontWeight.normal : FontWeight.w500),
                  ),
                ),
                isHome
                    ? CircleAvatar(
                        backgroundColor: color,
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/image/5.jpg'),
                        ))
                    : Container(
                        width: 30,
                      )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class IconHeaderBackground extends StatelessWidget {
  final Color color;
  const IconHeaderBackground({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
    );
  }
}
