// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_kit_app/pages/movie_detail_page.dart';

import 'package:movie_kit_app/shared/theme.dart';

class CustomeContentMovie extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final bool isActive;

  CustomeContentMovie({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MovieDetailPage(),
          ),
        );
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 160,
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                    ),
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            isActive
                ? Row(
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
                  )
                : Container(),
            SizedBox(
              height: 7,
            ),
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              subtitle,
              style: blackTextStyle.copyWith(
                fontSize: 12,
                fontWeight: medium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
