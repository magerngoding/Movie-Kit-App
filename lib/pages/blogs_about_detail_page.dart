// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_kit_app/shared/theme.dart';

class BlogsAboutDetailPage extends StatelessWidget {
  const BlogsAboutDetailPage({super.key});

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
                      width: 60,
                    ),
                    Text(
                      'Female Action Stars We...',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/icon_continue.png',
                        color: blackColor,
                        width: 24,
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
                    height: 16,
                  ),
                  Text(
                    'John Wick is now a marked man on the run in\n Manhattan. He is declared "excommunicado" by\n The High Table which places \$14 million contract\n bounty on his head as a result of Wick\'s\n unauthorized killing of High Table.',
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: regular,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'At first, Wick travels to the New York Public Library\n and retrieves two concealed items–a "marker"\n (medallion) and a crucifix necklace. Wick leaves\n but is pursued by a gang into an antique\n warehouse which leads to a bloody fight between\n Wick and the gang involving antique weaponry.',
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: regular,
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
                        image: AssetImage('assets/blogs6.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
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
