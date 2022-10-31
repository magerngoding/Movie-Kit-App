// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_kit_app/shared/theme.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

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
              Container(
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(left: 18),
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
                  )),
            ],
          ),
        ],
      )),
    );
  }
}
