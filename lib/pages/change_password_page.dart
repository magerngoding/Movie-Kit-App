// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_kit_app/pages/profile_page.dart';
import 'package:movie_kit_app/shared/theme.dart';
import 'package:movie_kit_app/widget/custome_button.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 13, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                    'Change Password',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
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
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'OLD PASSWORD',
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
                        height: 24,
                      ),
                      Text(
                        'NEW PASSWORD',
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
                        height: 24,
                      ),
                      Text(
                        'RE-TYPE PASSWORD',
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
                        height: 250,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            CustomeButton(
              title: 'Save Change',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
