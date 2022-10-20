// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_kit_app/shared/theme.dart';

class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 262,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          colorFilter: ColorFilter.srgbToLinearGamma(),
                          image: AssetImage('assets/image_johnwick_detail.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 12),
                      margin: EdgeInsets.symmetric(
                        horizontal: 18,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset(
                              'assets/icon_back.png',
                              width: 12,
                            ),
                          ),
                          Image.asset(
                            'assets/icon_continue.png',
                            width: 24,
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 90),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.5),
                              blurRadius: 2,
                              spreadRadius: 15,
                              offset: Offset(0, 1),
                            ),
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/icon_play.png'),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 160),
                        width: 164,
                        height: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/image_johnwick.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'John WIck 3: Parabellum',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '2hr 10m | R',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Action, Crime, Thriller',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '4.6/5',
                      style: blackTextStyle.copyWith(fontSize: 30),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/icon_star.png',
                      width: 20,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Image.asset(
                      'assets/icon_star.png',
                      width: 20,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Image.asset(
                      'assets/icon_star.png',
                      width: 20,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Image.asset(
                      'assets/icon_star.png',
                      width: 20,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Image.asset(
                      'assets/icon_star.png',
                      width: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 340,
                  height: 36,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                          color: redColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 25,
                            ),
                            Text(
                              'Detail',
                              style: whiteTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Reviews',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        'Showtime',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Synopsis',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    'In this third installment of the adrenaline-fueled action franchise, super-assassin John Wick returns with a \$14 million price tag on his head and an army of bounty-hunting...',
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 13,
            ),
          ],
        ),
      ),
    );
  }
}
