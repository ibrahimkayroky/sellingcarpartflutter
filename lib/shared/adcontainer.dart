import 'package:flutter/material.dart';

class adcontainer extends StatelessWidget {
  adcontainer({
    required this.containerText,
    required this.containerText2,
    required this.imageContainer,
    Key? key,
  }) : super(key: key);

  final String imageContainer;
  final String containerText;
  final String containerText2;

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    return Container(
      width: screenwidth / 2.1,
      height: screenheight / 3.2, 
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 245, 245, 245),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 120, 120, 120).withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 5,
            offset: Offset(1, 1),
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25)), // Match container border radius
                  child: Image.network(
                    "https://picsum.photos/250?image=9",
                    width: screenwidth / 1.5, 
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  padding: EdgeInsets.all(5),
                  color: Colors.black.withOpacity(0.7),
                  child: Text(
                    "\$100",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // Row of two text containers below the image
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // First text container
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        containerText,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Condition",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 81, 81, 81),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),

                // Second text container
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        containerText2,
                        style: TextStyle(
                          color: const Color.fromARGB(255, 81, 81, 81),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
