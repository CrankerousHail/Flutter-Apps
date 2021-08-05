import 'package:flutter/material.dart';
import 'package:bmi_app/constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});
  final IconData? icon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label ??'',
          style: klabelTextStyle,
        ),
      ],
    );
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard({ required this.colour, this.cardChild, this.onPress});
  final Color colour;
  final Widget? cardChild;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
