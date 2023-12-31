
import 'package:book_reading_app/constants/constant_colors.dart';
import 'package:flutter/material.dart';

import 'screens/home/home_screen.dart';
import 'screens/welcome/welcome_screen.dart';
import 'widgets/rounded_button.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book App',
      theme: ThemeData(
        backgroundColor: whiteColor,
      ),
      home: WelcomeScreen(),
    );
  }
}