// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_kit_app/shared/theme.dart';

class PhotosPage extends StatelessWidget {
  const PhotosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 13, horizontal: 18),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          'assets/icon_back.png',
                          color: blackColor,
                          width: 12,
                        ),
                      ),
                      SizedBox(
                        width: 140,
                      ),
                      Text(
                        'Photos',
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: semiBold),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 2,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: blackColor.withOpacity(0.1),
                        blurRadius: 0.1,
                        spreadRadius: 0.1,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Divider(
                    color: blackColor.withOpacity(0.1),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: 340,
                  height: 224,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/photos2.png'),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: 340,
                  height: 224,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/photos3.png'),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: 340,
                  height: 224,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/photos1.png'),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
