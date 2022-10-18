// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_kit_app/shared/theme.dart';

class ContentMovie extends StatelessWidget {
  const ContentMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 164,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image_johnwick.png'),
                  ),
                ),
              ),
              SizedBox(
                width: 18,
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            children: [
              Image.asset(
                'assets/icon_star.png',
                width: 14,
              ),
              Image.asset(
                'assets/icon_star.png',
                width: 14,
              ),
              Image.asset(
                'assets/icon_star.png',
                width: 14,
              ),
              Image.asset(
                'assets/icon_star.png',
                width: 14,
              ),
              Image.asset(
                'assets/icon_star0.png',
                width: 14,
              ),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'John Wick 3',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            'Crime . 2hr 10m | R',
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
          )
        ],
      ),
    );
  }
}
