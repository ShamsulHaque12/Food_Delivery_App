import 'package:flutter/material.dart';

class FoodCategory {
  final String name;
  final String imagePath;
  final String restaurant;
  final String price;
  final IconData icon;

  FoodCategory({
    required this.name,
    required this.imagePath,
    required this.restaurant,
    required this.price,
    required this.icon,
  });
}
