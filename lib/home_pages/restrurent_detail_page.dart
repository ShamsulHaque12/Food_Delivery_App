import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class RestrurentDetailPage extends StatefulWidget {
  final String name;
  final String imagePath;
  final String cuisine;
  final String rating;
  final String price;
  final String time;

  const RestrurentDetailPage({
    super.key,
    required this.name,
    required this.imagePath,
    required this.cuisine,
    required this.rating,
    required this.price,
    required this.time,
  });

  @override
  State<RestrurentDetailPage> createState() => _RestrurentDetailPageState();
}

class _RestrurentDetailPageState extends State<RestrurentDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () => Get.back(),
                icon: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  widget.imagePath,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                widget.name,
                style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                widget.cuisine,
                style: const TextStyle(fontSize: 20, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.orange),
                  const SizedBox(width: 5),
                  Text(widget.rating, style: const TextStyle(fontSize: 18)),
                  const SizedBox(width: 20),
                  const Icon(Icons.delivery_dining, color: Colors.green),
                  const SizedBox(width: 5),
                  Text(widget.price, style: const TextStyle(fontSize: 18)),
                  const SizedBox(width: 20),
                  const Icon(Icons.access_time, color: Colors.blue),
                  const SizedBox(width: 5),
                  Text(widget.time, style: const TextStyle(fontSize: 18)),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                'Description',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'This restaurant offers a variety of delicious dishes made from fresh ingredients. Enjoy fast delivery, great service, and a cozy ambiance!',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
