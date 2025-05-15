import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/home_pages/pop_up_page.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'home_page.dart';

class LocetionScreen extends StatelessWidget {
  const LocetionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 15, vertical: 60)),
          ClipOval(
            child: Image.asset("assets/images/locetion.jpg", fit: BoxFit.cover),
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: (){
              Get.to(()=>PopUpPage());
            },
            child: Container(
              height: 65,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.orange,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ACCESS LOCATION",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.location_on),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "DFOOD WILL ACCESS YOUR LOCATION \nONLY WHILE USING THE APP",
            style: TextStyle(fontSize: 20,color: Colors.grey,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
