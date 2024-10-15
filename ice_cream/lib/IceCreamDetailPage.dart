import 'package:flutter/material.dart';

class IceCreamDetailPage extends StatelessWidget {
  final String flavor;
  final String imagePath;
  final String description; 
  final double price; 

  IceCreamDetailPage({required this.flavor, required this.imagePath, required this.description, required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(flavor),
        backgroundColor: Color(0xff91E7DC),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath),
            SizedBox(height: 20),
            Text(
              flavor,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              '\$${price.toStringAsFixed(2)}', 
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.pink),
            ),
            SizedBox(height: 20),
            ElevatedButton(

              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('$flavor Ice-Cream added to cart!')),
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(300, 60),
                backgroundColor: Color(0xff91E7DC), 
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 20)
              ),
              child: Text('Add to Cart',),
            ),
          ],
        ),
      ),
    );
  }
}
