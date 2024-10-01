import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sellingcarpartsfront/History.dart';
class splachScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   final screenheight = MediaQuery.of(context).size.height; 
  
    return  MaterialApp(
      home:
            AnimatedSplashScreen(
                 
            duration: 2500,
            splashIconSize: screenheight/2,
            backgroundColor: Colors.black,
            splashTransition: SplashTransition.fadeTransition,
            splash: Column(
              children: [
                 Image(
                  width: 300,
                  image: AssetImage("assets/images/splachlogo.jpg"),),

                
              ],
            ), 
            nextScreen:  History()
            ),
    )
    ;
  }
    // dynamic get greencolor => HexColor("1EBD9D");

}
