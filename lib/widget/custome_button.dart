import 'package:flutter/material.dart';
import 'package:movie_kit_app/shared/theme.dart';

class CustomeButton extends StatelessWidget {
  final String title;
  final double width;
  final Function() onPressed;
  CustomeButton({
    required this.title,
    this.width = double.infinity,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      width: width,
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: redColor,
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}
