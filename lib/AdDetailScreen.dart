import 'package:flutter/material.dart';

class AdDetailScreen extends StatelessWidget {
  final String name;
  final String description;
  final List<String> images; 
  final double price;

  const AdDetailScreen({
    Key? key,
    required this.name,
    required this.description,
    required this.images,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
  height: 350,
  child: PageView.builder(
    itemCount: images.length,
    itemBuilder: (context, index) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey, 
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10), // Optional: add rounded corners
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10), // Make sure the image corners are also rounded
          child: Image.network(
            images[index],
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
      );
    },
  ),
),

            const SizedBox(height: 20),
            
            Text(
              name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: 10),
            
            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            
            const SizedBox(height: 20),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$$price",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Color.fromARGB(255, 0, 0, 0),
                    size: 30,
                  ),
                  onPressed: () {
                    print("Favorited $name");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
