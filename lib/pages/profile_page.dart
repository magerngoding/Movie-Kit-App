// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_kit_app/pages/account_information_page.dart';
import 'package:movie_kit_app/shared/theme.dart';
import 'package:movie_kit_app/widget/custome_bottom_navbar_item.dart';

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
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              width: 340,
              height: 44,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 14,
                  ),
                  Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AccountInformationPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Account Information',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              width: 340,
              height: 44,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 14,
                  ),
                  Icon(
                    Icons.monetization_on_rounded,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Transaction History',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              width: 340,
              height: 44,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 14,
                  ),
                  Icon(
                    Icons.star_half_sharp,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Rating App',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              width: 340,
              height: 44,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 14,
                  ),
                  Icon(
                    Icons.folder,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Privacy Policy',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 49,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomeBottomNavbarItem(
              index: 0,
              imageUrl: 'assets/icon_movie.png',
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
              isActive: true,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
