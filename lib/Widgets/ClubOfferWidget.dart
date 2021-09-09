import 'package:flutter/material.dart';

class ClubOfferWidget extends StatelessWidget {
  late final Color color1;
  late final Color color2;
  late final IconData iconData;
  late final String title;
  late final VoidCallback onTap;

  ClubOfferWidget(
      {required this.onTap,
      required this.color1,
      required this.color2,
      required this.iconData,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(4),
          height: 100,
          width: 130,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: color1.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(2, 2),
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              gradient: RadialGradient(colors: [color1, color2])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                iconData,
                size: 30,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
