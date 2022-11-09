// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_kit_app/pages/profile_page.dart';
import 'package:movie_kit_app/pages/sign_up_page.dart';
import 'package:movie_kit_app/shared/theme.dart';
import 'package:movie_kit_app/widget/custome_bottom_navbar_item.dart';
import 'package:movie_kit_app/widget/custome_button.dart';
import 'package:movie_kit_app/widget/custome_text_from_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: redTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
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
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 50,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'USER NAME',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'PASSWORD',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  CustomeButton(
                    title: 'Login',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        margin: EdgeInsets.only(left: 18, right: 16),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff1AA9E1),
                        ),
                        child: Container(
                          width: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/icon_twitter.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 44,
                        height: 44,
                        margin: EdgeInsets.only(left: 18, right: 16),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff3B5A9A),
                        ),
                        child: Container(
                          width: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/icon_fb.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 44,
                        height: 44,
                        margin: EdgeInsets.only(left: 18, right: 16),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffCB3E2D),
                        ),
                        child: Container(
                          width: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/icon_googleplus.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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
