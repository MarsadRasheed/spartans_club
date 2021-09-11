import 'package:flutter/material.dart';

class CustomShape extends CustomPainter {
  final Color backgroundColor;

  CustomShape(this.backgroundColor);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = backgroundColor;

    var path = Path();

    path.lineTo(-10, 0);
    path.lineTo(0, 5);
    path.lineTo(10, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}