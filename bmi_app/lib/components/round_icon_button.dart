import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({ required this.icon, required this.onpress});
  final IconData icon;
  final Function()? onpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onpress,
      elevation: 8.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
    );
  }
}
