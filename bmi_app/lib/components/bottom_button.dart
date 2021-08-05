import 'package:bmi_app/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.buttonTitle, required this.ontap});
  final Function()? ontap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: kbottomContainerColour,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25.0), topLeft: Radius.circular(25.0)),
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: klargeButtonStyle,
          ),
        ),
        margin: EdgeInsets.only(top: 15.0),
        width: double.infinity,
        height: kbottomContainer,
      ),
    );
  }
}
