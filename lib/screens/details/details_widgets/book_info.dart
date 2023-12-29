
import 'package:flutter/material.dart';

import '../../../constants/constant_colors.dart';
import '../../../widgets/book_rating.dart';

class BookInfo extends StatelessWidget {
  BookInfo({super.key, required this.size});

  final Size size;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flex(
        crossAxisAlignment: CrossAxisAlignment.start,
        direction: Axis.horizontal,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Crushing &",
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(fontSize: 28),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: this.size.height * 0.005),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 0),
                  child: Text(
                    "Influence",
                    style: Theme
                        .of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: this.size.width * 0.3,
                          padding: EdgeInsets.only(top: this.size.height *
                              0.02),
                          child: const Text(
                            "When the earth was flat and everyone wanted to win the gameof the best and people and winning with an A game with all the things all the things you have.",
                            maxLines: 5,
                            style: TextStyle(
                              fontSize: 10,
                              color: lightBlackColor,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: this.size.height *
                              0.15),
                          padding: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextButton(onPressed: (){},
                            child: const Text("Read",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.favorite_border,
                            size: 20,
                            color: Colors.grey,
                          ),
                        ),
                        BookRating(score: 4.9)
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
                color: Colors.transparent,
                child: Image.asset(
                  "assets/images/book-1.png",
                  height: double.infinity,
                  alignment: Alignment.topRight,
                  fit: BoxFit.fitWidth,
                ),
              ))
        ],
      ),
    );
  }
}