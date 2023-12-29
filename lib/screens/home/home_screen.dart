import 'package:book_reading_app/constants/constant_colors.dart';
import 'package:book_reading_app/widgets/book_rating.dart';
import 'package:book_reading_app/widgets/reading_card_list.dart';
import 'package:book_reading_app/widgets/two_side_rounded_button.dart';
import 'package:flutter/material.dart';

import '../details/details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold( body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/main_page_bg.png"),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fitWidth)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.displaySmall,
                          children: [
                        TextSpan(text: "What are you \nreading "),
                        TextSpan(
                            text: "today?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ))
                      ])),
                ),
                SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ReadingCardList(
                        image: "assets/images/book-1.png",
                        auth: "Gray Venchuk",
                        rating: 4.9,
                        title: "Crushing & Influence",
                        pressDetails: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const DetailsScreen();
                          }));
                        },
                        pressRead: () {},
                      ),
                      ReadingCardList(
                        image: "assets/images/book-2.png",
                        title: "Top Ten Business Hacks",
                        auth: "Herman Joel",
                        rating: 4.8,
                        pressDetails: () {},
                        pressRead: () {},
                      ),
                      SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.displaySmall,
                            children: const [
                              TextSpan(text: "Best of the "),
                              TextSpan(
                                  text: "day",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ]),
                      ),
                      bestOfTheDayCard(size, context),
                      RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.displaySmall,
                            children: const [
                              TextSpan(text: "Continue "),
                              TextSpan(
                                  text: "reading...",
                                  style: TextStyle(fontWeight: FontWeight.bold))
                            ]),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(38.5),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 33,
                                  color: Color(0xFFD3D3D3).withOpacity(.84))
                            ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(38.5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 30, right: 20),
                                  child: Row(
                                    children: [
                                      const Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Crushing & Influence",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Gary Venchuk",
                                              style: TextStyle(
                                                color: lightBlackColor,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Text(
                                                "Chapter 7 of 10",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: lightBlackColor),
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                          ],
                                        ),
                                      ),
                                      Image.asset(
                                        "assets/images/book-1.png",
                                        width: 55,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 7,
                                width: size.width * 0.65,
                                decoration: BoxDecoration(
                                  color: progressIndicator,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }

  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 245,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: size.width * 0.35,
              ),
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(0.45),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: const Text(
                      "New York Time Best For 11th March 2020",
                      style: TextStyle(
                        fontSize: 9,
                        color: lightBlackColor,
                      ),
                    ),
                  ),
                  Text(
                    "How To Win \nFriends & Influence",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const Text(
                    "Gray Venchuk",
                    style: TextStyle(color: lightBlackColor),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10.0),
                    child: BookRating(score: 4.9),
                  ),
                  const Expanded(
                    child: Text(
                      "When the earth was flat and everyone wanted to win the game of the best and people...",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 10,
                        color: lightBlackColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              "assets/images/book-3.png",
              width: size.width * 0.37,
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                height: 40,
                width: size.width * 0.3,
                child: TwoSideRoundedButton(
                    text: "Read", radius: 24, press: () {}),
              ))
        ],
      ),
    );
  }
}
