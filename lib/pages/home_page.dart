// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_kit_app/shared/theme.dart';
import 'package:movie_kit_app/widget/content_movie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(18),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Star Movie',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icon_search.png'),
                        ),
                      ),
                    ),
                  ],
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
                  height: 20,
                ),
                Container(
                  width: 340,
                  height: 40,
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
                        width: 166,
                        height: 32,
                        decoration: BoxDecoration(
                          color: redColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/icon_play.png',
                              width: 18,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Now Showing',
                              style: whiteTextStyle.copyWith(
                                fontWeight: semiBold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Comming Soon',
                        style: blackTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ContentMovie(
                          imageUrl: 'assets/image_johnwick.png',
                          title: 'John Wick 3',
                          subtitle: 'Crime  • 2h 10m | R',
                          isActive: true,
                        ),
                        ContentMovie(
                          imageUrl: 'assets/image_bladerunner.png',
                          title: 'Captain Marvel',
                          subtitle: 'Action  • 2h 25m | PG-13',
                          isActive: true,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContentMovie(
                      imageUrl: 'assets/image_alta.png',
                      title: 'Alta Batle Angel',
                      subtitle: 'Action  • 2h 25m | PG-13',
                      isActive: true,
                    ),
                    ContentMovie(
                      imageUrl: 'assets/image_avengers.png',
                      title: 'Avengers',
                      subtitle: 'Action  • 2h 25m | PG-13',
                      isActive: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
