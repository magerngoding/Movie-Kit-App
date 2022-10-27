// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_kit_app/shared/theme.dart';

class VideosPage extends StatelessWidget {
  const VideosPage({super.key});

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
                        width: 130,
                      ),
                      Text(
                        'Videos',
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
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      width: 360,
                      height: 224,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/photos4.png'),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 175),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 48,
                            height: 24,
                            decoration: BoxDecoration(
                              color: blackColor,
                            ),
                            child: Text(
                              textAlign: TextAlign.center,
                              '2:13',
                              style: whiteTextStyle,
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/icon_play.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      width: 340,
                      height: 224,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/videos4.png'),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 175),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 48,
                            height: 24,
                            decoration: BoxDecoration(
                              color: blackColor,
                            ),
                            child: Text(
                              textAlign: TextAlign.center,
                              '2:13',
                              style: whiteTextStyle,
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/icon_play.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      width: 340,
                      height: 202,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/videos5.png'),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 150),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 48,
                            height: 24,
                            decoration: BoxDecoration(
                              color: blackColor,
                            ),
                            child: Text(
                              textAlign: TextAlign.center,
                              '2:13',
                              style: whiteTextStyle,
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/icon_play.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
