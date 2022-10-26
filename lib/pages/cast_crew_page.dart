// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_kit_app/shared/theme.dart';
import 'package:movie_kit_app/widget/cast_crew.dart';

class CastCrewPage extends StatelessWidget {
  const CastCrewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                    width: 110,
                  ),
                  Text(
                    'Cast & Crew',
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
              height: 20,
            ),
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
            SizedBox(
              height: 20,
            ),
            CastCrew(
              imageUrl: 'assets/people_mark.png',
              name: 'Mark Dancos',
              callName: 'ZERO',
            ),
            SizedBox(
              height: 20,
            ),
            CastCrew(
              imageUrl: 'assets/people_asia.png',
              name: 'Asia Kalte Dillon',
              callName: 'ADJUDICATOR',
            ),
            SizedBox(
              height: 20,
            ),
            CastCrew(
              imageUrl: 'assets/people_lance.png',
              name: 'Lance Reddick',
              callName: 'CHARON',
            ),
            SizedBox(
              height: 20,
            ),
            CastCrew(
              imageUrl: 'assets/people_anjelica.png',
              name: 'Anjelica Huston',
              callName: 'DIRECTOR',
            ),
            SizedBox(
              height: 20,
            ),
            CastCrew(
              imageUrl: 'assets/people_margaret.png',
              name: 'Margaret Daly',
              callName: 'OPERATOR',
            ),
            SizedBox(
              height: 20,
            ),
            CastCrew(
              imageUrl: 'assets/people_jerome.png',
              name: 'Jerome Flynn',
              callName: 'BERRADA',
            ),
          ],
        ),
      ),
    );
  }
}
