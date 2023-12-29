

import 'package:book_reading_app/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class TwoSideRoundedButton extends StatelessWidget {
  final String text;
  final double radius;
  final VoidCallback press;
  TwoSideRoundedButton({
    super.key,
    required this.text,
    this.radius = 29,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: blackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius),
            bottomRight: Radius.circular(radius)
          )
        ),
        child: Text(
          text,
          style: TextStyle(color: whiteColor),
        ),
      ),
    );
  }
}
