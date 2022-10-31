import 'package:flutter/material.dart';
import 'package:movie_kit_app/shared/theme.dart';

class CustomeBlogsAbout extends StatelessWidget {
  final String imageUrl;
  final String time;
  final String name;
  CustomeBlogsAbout({
    required this.imageUrl,
    required this.time,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 160,
            height: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            time,
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            name,
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
