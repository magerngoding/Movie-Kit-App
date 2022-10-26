import 'package:flutter/material.dart';
import 'package:movie_kit_app/shared/theme.dart';

class BottomNavbarItem extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  final double width;
  BottomNavbarItem({
    required this.imageUrl,
    this.isActive = false,
    this.width = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Spacer(),
        Image.asset(
          imageUrl,
          width: width,
          color: isActive ? cyankColor : Colors.grey,
        ),
        Spacer()
      ],
    );
  }
}
