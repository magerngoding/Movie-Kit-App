// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_kit_app/pages/notifications_page.dart';
import 'package:movie_kit_app/pages/profile_page.dart';
import 'package:movie_kit_app/pages/tickets_page.dart';

import 'package:movie_kit_app/shared/theme.dart';
import 'package:movie_kit_app/widget/custome_bottom_navbar_item.dart';
import 'package:movie_kit_app/widget/custome_content_movie.dart';

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
                //   buildContent(currentIndex),
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
                      children: [
                        CustomeContentMovie(
                          imageUrl: 'assets/image_johnwick.png',
                          title: 'John Wick 3',
                          subtitle: 'Crime  • 2h 10m | R',
                          isActive: true,
                        ),
                        CustomeContentMovie(
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
                    CustomeContentMovie(
                      imageUrl: 'assets/image_alta.png',
                      title: 'Alta Batle Angel',
                      subtitle: 'Action  • 2h 25m | PG-13',
                      isActive: true,
                    ),
                    CustomeContentMovie(
                      imageUrl: 'assets/image_avengers.png',
                      title: 'Avengers',
                      subtitle: 'Action  • 2h 25m | PG-13',
                      isActive: true,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotificationsPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Notification Page',
                        style: TextStyle(
                          fontWeight: medium,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TicketsPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Tickets Page',
                        style: TextStyle(
                          fontWeight: medium,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilePage(),
                          ),
                        );
                      },
                      child: Text(
                        'Profile Page',
                        style: TextStyle(
                          fontWeight: medium,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 49,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Color(0xffE5E5E5), borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomeBottomNavbarItem(
              index: 0,
              imageUrl: 'assets/icon_movie.png',
              isActive: true,
            ),
            CustomeBottomNavbarItem(
              index: 1,
              imageUrl: 'assets/icon_tix.png',
            ),
            CustomeBottomNavbarItem(
              index: 2,
              imageUrl: 'assets/icon_bel.png',
              width: 20,
            ),
            CustomeBottomNavbarItem(
              index: 3,
              imageUrl: 'assets/icon_person.png',
              width: 20,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
