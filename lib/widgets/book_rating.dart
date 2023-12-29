
import 'package:book_reading_app/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  final double score;
  BookRating({
    super.key,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Icon(
              Icons.star,
            color: iconColor,
            size: 15,
          ),
          SizedBox(height: 5,),
          Text(
            "$score",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
