import 'package:flutter/material.dart';
import 'package:sellingcarpartsfront/AdDetailScreen.dart';
import 'package:sellingcarpartsfront/shared/adcontainer.dart';

class adscreen extends StatefulWidget {
  const adscreen({super.key});

  @override
  State<adscreen> createState() => _AdScreenState();
}

class _AdScreenState extends State<adscreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Column(
        children: [
           Stack(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black, 
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                  ),
                  icon: const Icon(Icons.filter_list),
                  label: const Text("Filter"),
                  onPressed: () {
                    print("Filter button pressed");
                  },
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10.0),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: InkWell(
                            child: adcontainer(
                              containerText: "Ad ${index * 2 + 1}",
                              containerText2: "Description",
                              imageContainer: "",
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AdDetailScreen(
                                    name: "Ad ${index * 2 + 1}",
                                    description: "This is the description for Ad ${index * 2 + 1}",
                                    images: [
                                            "https://picsum.photos/250?image=9",
                                            "https://picsum.photos/250?image=9",
                                            ],
                                    price: 150.00, 
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: InkWell(
                            child: adcontainer(
                              containerText: "Ad ${index * 2 + 2}",
                              containerText2: "Description",
                              imageContainer: "",
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AdDetailScreen(
                                    name: "Ad ${index * 2 + 2}",
                                    description: "This is the description for Ad ${index * 2 + 2}",
                                    images: [
                                            "https://picsum.photos/250?image=9",
                                            "https://picsum.photos/250?image=9",
                                            ],
                                    price: 180.00,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
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
