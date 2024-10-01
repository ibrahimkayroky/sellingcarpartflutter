import 'package:flutter/material.dart';
import 'package:sellingcarpartsfront/History.dart';
import 'package:sellingcarpartsfront/LoginScreen.dart';
import 'package:sellingcarpartsfront/SignUpScreen.dart';
import 'package:sellingcarpartsfront/adscreen.dart';
import 'package:sellingcarpartsfront/splach/splachScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

    
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
          home: adscreen(),
    ); 
   }
}