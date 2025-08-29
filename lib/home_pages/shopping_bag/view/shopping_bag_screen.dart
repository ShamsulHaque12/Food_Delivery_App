import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../all_categories/controller/see_all_categories_controller.dart';
class ShoppingBagScreen extends StatelessWidget {
 final SeeAllCategoriesController controller = Get.put(SeeAllCategoriesController());
 final String name;
 final String imagePath;
 final String price;
 final String restaurant;
 final IconData icon;
  ShoppingBagScreen({super.key, required this.name, required this.imagePath, required this.price, required this.restaurant, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text('Shopping Bag'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(backgroundImage: AssetImage(imagePath),radius: 50,),
          ],
        ),
      ),
    );
  }
}
