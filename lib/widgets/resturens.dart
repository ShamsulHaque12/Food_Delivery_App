import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resturens extends StatelessWidget {
  const Resturens({super.key});

  final List<Map<String, dynamic>> restaurants = const [
    {
      'name': 'Rose Garden Restaurant',
      'image': 'assets/foods/roseGarden.jpg',
      'cuisine': 'Burger · Chicken · Riche · Wings',
      'rating': 4.7,
      'price': 'Free',
      'time': '20 min',
    },
    {
      'name': 'Spice Villa',
      'image': 'assets/foods/spiceVilla.jpg',
      'cuisine': 'Curry · Rice · Kebab',
      'rating': 4.5,
      'price': '\$2',
      'time': '25 min',
    },
    {
      'name': 'Green Bowl',
      'image': 'assets/foods/greenBowl.jpg',
      'cuisine': 'Salad · Vegan · Smoothie',
      'rating': 4.8,
      'price': 'Free',
      'time': '15 min',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Restaurants'),
      ),
      child: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: restaurants.length,
          itemBuilder: (context, index) {
            final restaurant = restaurants[index];
            return _buildRestaurantCard(
              context,
              name: restaurant['name'],
              imagePath: restaurant['image'],
              cuisine: restaurant['cuisine'],
              rating: restaurant['rating'],
              price: restaurant['price'],
              time: restaurant['time'],
            );
          },
        ),
      ),
    );
  }

  Widget _buildRestaurantCard(
      BuildContext context, {
        required String name,
        required String imagePath,
        required String cuisine,
        required double rating,
        required String price,
        required String time,
      }) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              imagePath,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    showCupertinoDialog(
                      context: context,
                      builder: (_) => CupertinoAlertDialog(
                        title: Text(name),
                        content: Text('Clicked on "$name"'),
                        actions: [
                          CupertinoDialogAction(
                            child: const Text('OK'),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Text(cuisine, style: const TextStyle(color: Colors.grey)),
                const SizedBox(height: 6),
                Row(
                  children: [
                    const Icon(Icons.star, size: 16, color: Colors.orange),
                    const SizedBox(width: 4),
                    Text(rating.toString()),
                    const SizedBox(width: 10),
                    Text(price),
                    const SizedBox(width: 10),
                    const Icon(Icons.timer, size: 16),
                    const SizedBox(width: 4),
                    Text(time),
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

