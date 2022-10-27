// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_kit_app/pages/blogs_about_page.dart';
import 'package:movie_kit_app/pages/cast_crew_page.dart';
import 'package:movie_kit_app/pages/photos_page.dart';
import 'package:movie_kit_app/pages/videos_page.dart';
import 'package:movie_kit_app/shared/theme.dart';
import 'package:movie_kit_app/widget/blogs_about.dart';
import 'package:movie_kit_app/widget/cast_crew.dart';

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

            // NOTE : SYSNOPSIS
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

            // NOTE : CAST & CREW
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cast & Crew',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CastCrewPage(),
                        ),
                      );
                    },
                    child: Text(
                      'View all',
                      style: TextStyle(
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CastCrew(
                  imageUrl: 'assets/people_keanu.png',
                  name: 'Keanu Reeves',
                  callName: 'JOHN WICK',
                ),
                SizedBox(
                  height: 20,
                ),
                CastCrew(
                  imageUrl: 'assets/people_halle.png',
                  name: 'Halle Berry',
                  callName: 'SOFIA',
                ),
                SizedBox(
                  height: 20,
                ),
                CastCrew(
                  imageUrl: 'assets/people_laurence.png',
                  name: 'Laurence Fishburne',
                  callName: 'BOWERY KING',
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),

            // NOTE : PHOTOS
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Photos',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PhotosPage(),
                        ),
                      );
                    },
                    child: Text(
                      'View all',
                      style: TextStyle(
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.only(left: 18),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 104,
                      height: 72,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/photos1.png'),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 104,
                      height: 72,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/photos2.png'),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 104,
                      height: 72,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/photos3.png'),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 104,
                      height: 72,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/photos4.png'),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            // NOTE : VIDEOS
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Videos',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VideosPage(),
                        ),
                      );
                    },
                    child: Text(
                      'View all',
                      style: TextStyle(
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.only(left: 18),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 104,
                      height: 72,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/videos1.png'),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.asset(
                        'assets/icon_play.png',
                        width: 24,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 104,
                      height: 72,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/videos2.png'),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 104,
                      height: 72,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/videos3.png'),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 104,
                      height: 72,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/photos4.png'),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),

            // NOTE : Blogs
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Blogs About This Film',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BlogsAboutPage(),
                        ),
                      );
                    },
                    child: Text(
                      'View all',
                      style: TextStyle(
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BlogsAbout(
                  imageUrl: 'assets/blogs1.png',
                  time: '3 hours ago',
                  name: 'Female Action Stars\nWe Cant Wait',
                ),
                BlogsAbout(
                  imageUrl: 'assets/blogs2.png',
                  time: '5 hours ago',
                  name: 'The Best John Wick\nAction Scenes',
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
