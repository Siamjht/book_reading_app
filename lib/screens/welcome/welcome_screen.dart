
import 'package:book_reading_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../../widgets/rounded_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        // height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Bitmap.png"),
              fit: BoxFit.fill,
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                  style: Theme.of(context).textTheme.displaySmall,
                  children: const [
                    TextSpan(
                        text: "flamin"
                    ),
                    TextSpan(
                      text: "go.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ]
              ),),

            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: RoundedButton(
                  text: "start reading",
                  fontSize: 20,
                  press: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){return HomeScreen();}));
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
