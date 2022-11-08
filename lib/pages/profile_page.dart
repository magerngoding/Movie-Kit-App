// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_kit_app/shared/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Profile',
                        style: blackTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
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
                  height: 30,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 104,
                  height: 104,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/image_profile.jpg',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Siraj Hafizh',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 69,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Color(0xff19E58F).withOpacity(0.2),
                      ),
                      child: Center(
                        child: Text(
                          'MEMBER',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: semiBold,
                            color: Color(0xff19E58F),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  'sirajh611@gmail.com',
                  style: blackTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 52,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          '123',
                          style: blackTextStyle.copyWith(
                              fontSize: 30, fontWeight: semiBold),
                        ),
                        Text(
                          'TOTAL POINTS',
                          style: blackTextStyle.copyWith(
                              fontSize: 12, fontWeight: medium),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '06',
                          style: blackTextStyle.copyWith(
                              fontSize: 30, fontWeight: semiBold),
                        ),
                        Text(
                          'MOVIE WATCHED',
                          style: blackTextStyle.copyWith(
                              fontSize: 12, fontWeight: medium),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
