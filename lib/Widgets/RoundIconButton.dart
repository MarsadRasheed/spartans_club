import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData iconData;

  RoundIconButton({required this.onPressed, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: RawMaterialButton(
        onPressed: onPressed,
        child: Icon(iconData),
        constraints: BoxConstraints.tightFor(
          height: 40,
          width: 40,
        ),
        elevation: 2,
        shape: CircleBorder(),
        fillColor: Color(0xFF303135),
      ),
    );
  }
}
