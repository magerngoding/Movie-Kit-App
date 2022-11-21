// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movie_kit_app/shared/theme.dart';
import 'package:movie_kit_app/widget/custome_transaction_history.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
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
                        'Transaction History',
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
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: Stack(
                    children: [
                      Container(
                        width: 340,
                        height: 192,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xff00428C),
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 220,
                            height: 60,
                            margin: EdgeInsets.only(
                              top: 36,
                              left: 120,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xff0052A4),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 24,
                              left: 248,
                            ),
                            width: 64,
                            height: 20,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/icon_visa.png'),
                              ),
                            ),
                          ),
                          Container(
                            width: 220,
                            height: 60,
                            margin: EdgeInsets.only(
                              top: 62,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xff0052A4),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 83,
                              left: 27,
                            ),
                            child: Text(
                              '4 3 1 9    5 3 1 2    0 2 1 5    1 2 8 9',
                              style: whiteTextStyle.copyWith(
                                fontSize: 20,
                                fontWeight: regular,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 128,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'CARD HOLDER',
                                  style: whiteTextStyle.copyWith(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: medium,
                                  ),
                                ),
                                Text(
                                  'SIRAJ HAFIZH',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: medium,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'EXPIRES',
                                  style: whiteTextStyle.copyWith(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: medium,
                                  ),
                                ),
                                Text(
                                  '08/23',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: medium,
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
                SizedBox(
                  height: 24,
                ),
              ],
            ),
            CustomeTrasactionHistory(
              title: 'Booked Ticket',
              subtitle: 'John Wick 3: Parabellum',
              price: '-\$54.00',
              date: '24 MAY, 2019',
            ),
            SizedBox(
              height: 12,
            ),
            CustomeTrasactionHistory(
              title: 'Booked Ticket',
              subtitle: 'King of The Monsters',
              price: '-\$38.00',
              date: '24 MAY, 2019',
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              width: 340,
              height: 72,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
              ),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xffFBFF47).withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/icon_transfer.png',
                          width: 22,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Transfer Money',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          'Bank Account',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: medium,
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '-\$54.00',
                          style: greenTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          '24 MAY, 2019',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: medium,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            CustomeTrasactionHistory(
              title: 'The Secret Life of Pets',
              subtitle: 'King of The Monsters',
              price: '-\$33.00',
              date: '24 MAY, 2019',
            ),
          ],
        ),
      ),
    );
  }
}
