// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_kit_app/shared/theme.dart';

class TicketsPage extends StatelessWidget {
  const TicketsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 13,
                  horizontal: 18,
                ),
                child: Row(
                  children: [
                    Text(
                      'Tickets',
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
                height: 30,
              ),
              Container(
                width: 324,
                height: 208,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/image_tickets_johnwick.png'),
                  ),
                ),
              ),
              Container(
                width: 324,
                height: 266,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 24, top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John Wick 3 : Parabellum',
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: semiBold),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'THREATRE',
                        style: blackTextStyle.copyWith(
                            fontSize: 12, fontWeight: light),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Paragon Cinema',
                        style: blackTextStyle.copyWith(
                            fontSize: 14, fontWeight: semiBold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'DATE',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 12,
                                    fontWeight: medium,
                                  ),
                                ),
                                Text(
                                  '24 May, 2019',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'TIME',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 12,
                                    fontWeight: medium,
                                  ),
                                ),
                                Text(
                                  '8:30 - 10:10 AM',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'HAL',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 12,
                                    fontWeight: medium,
                                  ),
                                ),
                                Text(
                                  'C',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ROW',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 12,
                                    fontWeight: medium,
                                  ),
                                ),
                                Text(
                                  'E',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'SEAT',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 12,
                                    fontWeight: medium,
                                  ),
                                ),
                                Text(
                                  'E4, E5',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 324,
                height: 98,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF5F5F5),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Image.asset(
                      'assets/image_barcode.png',
                      width: 243,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'PAR',
                          style: blackTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                        Text(
                          ' 3 1 1 7 7 0 1 3 2 0 6 3 7 5',
                          style: blackTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
