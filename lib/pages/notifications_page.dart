// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_kit_app/shared/theme.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 13,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 145,
                      ),
                      Text(
                        'Notifications',
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
                  height: 30,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.only(left: 18, right: 16),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: greenColor.withOpacity(0.3),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icon_like.png'),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Congrat! You booked ',
                            style: blackTextStyle.copyWith(
                              fontWeight: medium,
                            ),
                            children: [
                              TextSpan(
                                text: 'John Wick 3. ',
                                style: blackTextStyle.copyWith(
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'movie ticket successfully!',
                          style: blackTextStyle.copyWith(fontSize: 14),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '4 weeks ago',
                          style: blackTextStyle.copyWith(
                              fontSize: 12, fontWeight: light),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Divider(
                  color: Colors.black12,
                  height: 1,
                ),
                SizedBox(
                  height: 17,
                ),
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.only(left: 18, right: 16),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: redColor.withOpacity(0.3),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icon_bels.png'),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Hi ',
                            style: blackTextStyle.copyWith(
                              fontWeight: medium,
                            ),
                            children: [
                              TextSpan(
                                text: 'Morgan. ',
                                style: blackTextStyle.copyWith(
                                  fontWeight: semiBold,
                                ),
                              ),
                              TextSpan(
                                text: 'This is just a reminder for .',
                                style: blackTextStyle.copyWith(
                                  fontWeight: medium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'your movie today in 13:45 PM.',
                          style: blackTextStyle.copyWith(fontSize: 14),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '3 hours ago',
                          style: blackTextStyle.copyWith(
                              fontSize: 12, fontWeight: light),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Divider(
                  color: Colors.black,
                  height: 1,
                ),
                SizedBox(
                  height: 17,
                ),
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.only(left: 18, right: 16),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: yellowColor.withOpacity(0.3),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icon_dollar.png'),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text:
                                'You’ve got an cashback for the past\nticket booking. ',
                            style: blackTextStyle.copyWith(
                              fontWeight: medium,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '2 days ago.',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Divider(
                  color: Colors.black12,
                  height: 1,
                ),
                SizedBox(
                  height: 17,
                ),
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.only(left: 18, right: 16),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: cyankColor.withOpacity(0.3),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icon_persen.png'),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text:
                                'You just got the discount 30% for\nbooking a movie in this week. ',
                            style: blackTextStyle.copyWith(
                              fontWeight: medium,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '5 days ago.',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Divider(
                  color: Colors.black12,
                  height: 1,
                ),
                SizedBox(
                  height: 17,
                ),
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.only(left: 18, right: 16),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: greenColor.withOpacity(0.3),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icon_like.png'),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Congrat! You booked ',
                            style: blackTextStyle.copyWith(
                              fontWeight: medium,
                            ),
                            children: [
                              TextSpan(
                                text: 'John Wick 3. ',
                                style: blackTextStyle.copyWith(
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'movie ticket successfully!',
                          style: blackTextStyle.copyWith(fontSize: 14),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '4 weeks ago',
                          style: blackTextStyle.copyWith(
                              fontSize: 12, fontWeight: light),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Divider(
                  color: Colors.black,
                  height: 1,
                ),
                SizedBox(
                  height: 17,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
