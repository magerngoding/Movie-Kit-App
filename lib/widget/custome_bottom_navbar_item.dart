import 'package:flutter/material.dart';
import 'package:movie_kit_app/cubit/page_cubit.dart';
import 'package:movie_kit_app/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomeBottomNavbarItem extends StatelessWidget {
  final int index;
  final String imageUrl;
  final bool isActive;
  final double width;

  CustomeBottomNavbarItem({
    required this.index,
    required this.imageUrl,
    this.width = 24,
    this.isActive = false,
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
