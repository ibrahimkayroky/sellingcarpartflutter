import 'package:flutter/material.dart';
import 'package:sellingcarpartsfront/shared/nav.dart';
import 'package:sellingcarpartsfront/shared/partbuttom.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Column(
        children: [
          // Header container
          Container(
            height: 100,
            width: double.infinity,
            color: const Color.fromARGB(255, 140, 140, 140),
          ),

          // ListView to ensure smooth scrolling and InkWell visibility
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10.0), // Add padding if needed
              itemCount: 6, // Number of parts
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    InkWell(
                      child: partButtom(
                        containerText: "ibrahim",
                        containerText2: "description",
                        imageContainer: "",
                      ),
                      onTap: () {
                        print("Tapped on item $index");
                      },
                    ),
                    SizedBox(height: 10), // Space between items
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
