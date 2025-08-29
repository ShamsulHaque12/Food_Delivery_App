import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/home_pages/shopping_bag/view/shopping_bag_screen.dart';
import 'package:get/get.dart';

import '../../food_details_page.dart';
import '../controller/see_all_categories_controller.dart';

class SeeAllCategories extends StatelessWidget {
  final SeeAllCategoriesController controller = Get.put(
    SeeAllCategoriesController(),
  );

  SeeAllCategories({super.key});

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
        title: Text("All Categories"),
        centerTitle: true,
      ),
      body: Obx(() {
        if (controller.categories.isEmpty) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          itemCount: controller.categories.length,
          itemBuilder: (BuildContext context, int index) {
            final category = controller.categories[index];
            return Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: ListTile(
                title: Text(
                  category.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                leading: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(category.imagePath),
                ),
                subtitle: Text(
                  category.restaurant,
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "\$${category.price}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: (){
                        ShoppingBagScreen(
                          name: category.name,
                          imagePath: category.imagePath,
                          price: category.price,
                          restaurant: category.restaurant,
                          icon: category.icon,
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          shape: BoxShape.circle,
                        ),
                        child: Icon(category.icon),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
