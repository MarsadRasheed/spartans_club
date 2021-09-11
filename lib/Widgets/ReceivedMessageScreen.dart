import 'dart:math' as math; //
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spartansclub/Shapes/CustomShape.dart';

class ReceivedMessageScreen extends StatelessWidget {
  final String message;

  ReceivedMessageScreen(this.message);

  @override
  Widget build(BuildContext context) {
    final messageTextGroup = Flexible(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationX(math.pi),
          child: CustomPaint(
            painter: CustomShape(Color(0xff2C2C2E)),
          ),
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Color(0xff2C2C2E),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
                bottomRight: Radius.circular(18),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    message,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: Text(
                    "9:00 AM",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 9,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));

    return Padding(
      padding: EdgeInsets.only(right: 50.0, left: 18, top: 10, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              "https://st3.depositphotos.com/12985790/i/600/depositphotos_157947226-stock-photo-man-looking-at-camera.jpg",
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 30,
            width: 20,
          ),
          messageTextGroup,
        ],
      ),
    );
  }
}
