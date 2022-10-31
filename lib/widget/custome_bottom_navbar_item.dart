import 'package:flutter/material.dart';
import 'package:movie_kit_app/cubit/page_cubit.dart';
import 'package:movie_kit_app/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomeBottomNavbarItem extends StatelessWidget {
  final int index;
  final String imageUrl;

  final double width;

  CustomeBottomNavbarItem({
    required this.index,
    required this.imageUrl,
    this.width = 24,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Spacer(),
          Image.asset(
            imageUrl,
            width: width,
            color: context.read<PageCubit>().state == index
                ? cyankColor
                : Colors.grey,
          ),
          Spacer()
        ],
      ),
    );
  }
}
