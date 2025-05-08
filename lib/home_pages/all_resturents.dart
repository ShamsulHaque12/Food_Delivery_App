import 'package:flutter/material.dart';
import 'package:food_delivery/home_pages/restrurent_detail_page.dart';

class AllResturents extends StatefulWidget {
  const AllResturents({super.key});

  @override
  State<AllResturents> createState() => _AllResturentsState();
}

class _AllResturentsState extends State<AllResturents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xFF0D0D25),
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                   Center(
                     child: Text(
                      "Restaurants",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                   ),
                ],
              ),
              const SizedBox(height: 20),
              _buildRestaurantCard(
                imagePath: "assets/foods/roseGarden.jpg",
                name: "Rose Garden Restaurant",
                cuisine: "Burger · Chicken · Riche · Wings",
                rating: "4.7",
                delivery: "Free",
                time: "20 min",
              ),
              _buildRestaurantCard(
                imagePath: "assets/foods/green.jpg",
                name: "Green Bowl",
                cuisine: "Burger · Chicken · Riche · Wings",
                rating: "4.5",
                delivery: "Free",
                time: "15 min",
              ),
              _buildRestaurantCard(
                imagePath: "assets/foods/buffet.jpg",
                name: "Buffet Lounge Mirpur 12",
                cuisine: "Burger · Chicken · Riche · Wings",
                rating: "4.8",
                delivery: "Free",
                time: "25 min",
              ),
              _buildRestaurantCard(
                imagePath: "assets/foods/rooftop.jpg",
                name: "Buffet Lounge",
                cuisine: "Burger · Chicken · Riche · Wings",
                rating: "4.8",
                delivery: "Free",
                time: "25 min",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRestaurantCard({
    required String imagePath,
    required String name,
    required String cuisine,
    required String rating,
    required String delivery,
    required String time,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => RestrurentDetailPage(
              name: name,
              imagePath: imagePath,
              cuisine: cuisine,
              rating: rating,
              price: delivery,
              time: time,
            ),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagePath,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          const SizedBox(height: 5),
          Text(
            cuisine,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const Icon(Icons.star, size: 28, color: Colors.orange),
              const SizedBox(width: 5),
              Text(rating, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(width: 20),
              const Icon(Icons.delivery_dining, size: 28, color: Colors.orange),
              const SizedBox(width: 5),
              Text(delivery, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(width: 20),
              const Icon(Icons.access_time, size: 28, color: Colors.orange),
              const SizedBox(width: 5),
              Text(time, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
