// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_kit_app/shared/theme.dart';

class BlogsAboutPage extends StatelessWidget {
  const BlogsAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                      width: 85,
                    ),
                    Text(
                      'Blog About This Film',
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 340,
                    height: 168,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/blogs3.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    '3 hours ago',
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: regular,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Female Action Stars We Cant Wait',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: 340,
                    height: 168,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/blogs4.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    '2 hours ago',
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: regular,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'The Best Action John Wick Action Scenes',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: 340,
                    height: 168,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/blogs5.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    '1 hours ago',
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: regular,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Nice...!',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
