import 'package:flutter/material.dart';

import 'IceCreamDetailPage.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int myindex=0;
  final List<Map<String, dynamic>> iceCreams = [
    {
      'name': 'Chocolate',
      'image': 'lib/assets/images/Chocolate.png',
      'description': 'Rich and creamy, this classic chocolate ice cream is made with premium cocoa, delivering an indulgent flavor that melts in your mouth.',
      'price': 3.99,
    },
    {
      'name': 'Vanilla',
      'image': 'lib/assets/images/Vanilla.png',
      'description': 'A timeless favorite, our vanilla ice cream is made with real vanilla beans for an authentic taste.',
      'price': 3.49,
    },
    {
      'name': 'Strawberry',
      'image': 'lib/assets/images/Strawberry.png',
      'description': 'Bursting with the fresh flavor of ripe strawberries, this ice cream is a refreshing choice for summer days.',
      'price': 3.79,
    },
    {
      'name': 'Mango',
      'image': 'lib/assets/images/Mango.png',
      'description': 'Experience the tropical taste of summer with our mango ice cream, made from juicy, ripe mangoes.',
      'price': 4.19,
    },
    {
      'name': 'Raspberry',
      'image': 'lib/assets/images/Raspberry.png',
      'description': 'Tart and sweet, our raspberry ice cream combines the tanginess of fresh raspberries with a smooth base.',
      'price': 4.29,
    },
    {
      'name': 'Butterscotch',
      'image': 'lib/assets/images/Butterscotch.png',
      'description': 'This indulgent flavor combines the rich taste of butterscotch with creamy ice cream for a uniquely sweet experience.',
      'price': 3.99,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff91E7DC),
        title: Text('Ice Cream Shop'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            myindex=index;
          });
        },
        backgroundColor: Color(0xff91E7DC),
          currentIndex: myindex,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
      ]),
      body: Padding(padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Popular Flavors',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.9,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: iceCreams.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => IceCreamDetailPage(
                            flavor: iceCreams[index]['name']!,
                            imagePath: iceCreams[index]['image']!,
                            description: iceCreams[index]['description']!,
                            price: iceCreams[index]['price']!,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Ice cream placeholder image (replace with actual images)
                          Container(
                            height: 80,
                            width: 80,
                            child: Image.asset(
                              iceCreams[index]['image']!, // Load image from assets
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            iceCreams[index]['name']!,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
