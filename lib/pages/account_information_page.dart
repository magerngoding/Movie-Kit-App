// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_kit_app/pages/change_password_page.dart';
import 'package:movie_kit_app/pages/profile_page.dart';
import 'package:movie_kit_app/shared/theme.dart';
import 'package:movie_kit_app/widget/custome_button.dart';

class AccountInformationPage extends StatelessWidget {
  const AccountInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                      'Account Information',
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
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Change Photo',
                      style: TextStyle(
                        fontWeight: medium,
                      ),
                    ),
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
                            hintText: 'Siraj Hafizh',
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'EMAIL',
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
                            hintText: 'Sirajh611@gmail.com',
                            prefixIcon: Icon(Icons.mail_outline_outlined),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'PHONE',
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
                            hintText: '+62 85717194672',
                            prefixIcon: Icon(Icons.phone_iphone_rounded),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'BIRTHDAY',
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
                            hintText: 'Sep 24, 2001',
                            prefixIcon: Icon(Icons.calendar_month_outlined),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChangePasswordPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Change Password',
                        style: redTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: CustomeButton(
                      width: 324,
                      title: 'Save Changed',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilePage(),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
