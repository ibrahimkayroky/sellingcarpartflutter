// import 'package:biac/imageHandle/image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// ignore: must_be_immutable

class partButtom extends StatelessWidget {
   partButtom({
    required this.containerText,
    required this.containerText2,

    required this.imageContainer,
    Key? key,
  }):super(key: key);
late String imageContainer;
late String containerText;
late String containerText2;

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width; 
    final screenheight = MediaQuery.of(context).size.height; 


    return Container(
      

                        width: screenwidth / 1.05,
                        height: screenheight / 6.5,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 245, 245, 245),
                              boxShadow: [
                                      BoxShadow(
                                        color: const Color.fromARGB(255, 120, 120, 120).withOpacity(0.5),
                                        spreadRadius: 0,
                                        blurRadius: 5,
                                        offset: Offset(1, 1), 
                                      ),
                                    ],
                                      borderRadius: BorderRadius.all(Radius.circular(25)
                                      ),
                                      ),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(25)),
                                          ),
                                          padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(Radius.circular(25)), // Match container border radius
                                            child: Image.network(
                                              "https://picsum.photos/250?image=9", 
                                              width: screenwidth/3,
                                              fit: BoxFit.cover,                    
                                            ))),
                                        Container(
                                          width: screenwidth/2,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              
                                              Container(
                                                alignment: Alignment.topLeft,
                                                margin: EdgeInsets.fromLTRB(10.0,10.0, 10.0, 0.0),
                                                child: Text(containerText,
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600
                                                  ),
                                                                                    ),
                                              ),
                                              
                                              Container(
                                                alignment: Alignment.topLeft,
                                                margin: EdgeInsets.fromLTRB(10.0,0.0, 10.0, 0.0),
                                                child: Text(containerText2,
                                              
                                                  style: TextStyle(
                                                    color: const Color.fromARGB(255, 81, 81, 81),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400
                                                  ),
                                                                                    ),
                                              ),

                                      

                                              Container(
                                                alignment: Alignment.topLeft,
                                                margin: EdgeInsets.fromLTRB(10.0,0.0, 10.0, 0.0),
                                                child: Text("condition",
                                              
                                                  style: TextStyle(
                                                    color: const Color.fromARGB(255, 81, 81, 81),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400
                                                  ),
                                                                                    ),
                                              ),
                                              Container(
                                                alignment: Alignment.topLeft,
                                                margin: EdgeInsets.fromLTRB(10.0,0.0, 10.0, 0.0),
                                                child: Text("100\$",
                                              
                                                  style: TextStyle(
                                                    color: const Color.fromARGB(255, 81, 81, 81),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold
                                                  ),
                                                                                    ),
                                              ),      
                                                                               ],
                                          
                                          ),
                                        ),
                                        ],
                                    ),
    );
  }
}
