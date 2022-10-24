// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_kit_app/shared/theme.dart';

class CastCrew extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String callName;

  CastCrew({
    required this.imageUrl,
    required this.name,
    required this.callName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          Text(
            name,
            style: blackTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
          Container(
            width: 4,
            height: 4,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_dot.png'),
              ),
            ),
          ),
          Container(
            width: 4,
            height: 4,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_dot.png'),
              ),
            ),
          ),
          Container(
            width: 4,
            height: 4,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_dot.png'),
              ),
            ),
          ),
          Text(
            callName,
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
