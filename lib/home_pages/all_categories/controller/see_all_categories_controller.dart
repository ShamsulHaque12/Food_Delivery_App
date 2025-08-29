import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/food_category.dart';

class SeeAllCategoriesController extends GetxController {
  RxList<FoodCategory> categories = <FoodCategory>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadCategories();
  }

  void loadCategories() {
    categories.value = [
      FoodCategory(
        name: 'Pizza',
        imagePath: 'assets/foods/pizzza.jpg',
        price: '70',
        restaurant: 'Italiano Resto',
        icon: Icons.add,
      ),
      FoodCategory(
        name: 'Burger',
        imagePath: 'assets/foods/burger.jpg',
        price: '50',
        restaurant: 'Burger King',
        icon: Icons.add,
      ),
      FoodCategory(
        name: 'Chicken Bucket',
        imagePath: 'assets/foods/chikenBukket.jpg',
        price: '50',
        restaurant: 'Burger King',
        icon: Icons.add,
      ),
      FoodCategory(
        name: 'Pizza',
        imagePath: 'assets/foods/pizzza.jpg',
        price: '70',
        restaurant: 'Italiano Resto',
        icon: Icons.add,
      ),
      FoodCategory(
        name: 'Burger',
        imagePath: 'assets/foods/burger.jpg',
        price: '50',
        restaurant: 'Burger King',
        icon: Icons.add,
      ),
      FoodCategory(
        name: 'Chicken Bucket',
        imagePath: 'assets/foods/chikenBukket.jpg',
        price: '50',
        restaurant: 'Burger King',
        icon: Icons.add,
      ),
    ];
  }
}
