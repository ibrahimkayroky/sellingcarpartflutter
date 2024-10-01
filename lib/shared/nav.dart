import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:hexcolor/hexcolor.dart';

class nav extends StatelessWidget {
nav({
  required this.text,
  required this.f,
  required this.endsizedbox,
  required this.containerheight,
  required this.fontsize,
  Key? key,
}) : super(key: key);
Widget f;
double endsizedbox;
double containerheight;
double fontsize;

String text;
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height; 
    final screenwidth = MediaQuery.of(context).size.width;
    
    return   Container(
        height: containerheight,
        width: double.infinity,
        decoration: BoxDecoration(
          color: greencolor,

          boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                  ),
        child: Column(
          children: [
            SizedBox(height: screenheight / 20,),
            Container(
              height: screenheight / 13.4,
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Container(
                     width: screenwidth / 7,
                      child: f,
                    ),
                    Container(
                      
                     width: screenwidth / 1.8,
                      child: Image(image: AssetImage("assets/images/logo2.png"))
                    ),
                    Container(
                      
                     width: screenwidth / 7
                      ,height: 1,)
              
                ]
              ),
              
            ),
            SizedBox(height: containerheight-endsizedbox-180,),
          Container(
        
        child: Text(text,
        style: TextStyle(fontSize: fontsize,

        
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      textAlign: TextAlign.center,
        ),
        ),
        SizedBox(
          height: endsizedbox,
        )
        ],
          
      ),
        )
    ;
  }
   dynamic get greencolor => HexColor("1EBD9D");
}


