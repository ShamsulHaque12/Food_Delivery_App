import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'firstslider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    navigationHome();
  }

  void navigationHome(){
    Future.delayed(Duration(seconds: 4),(){
      Get.to(()=>Firstslider());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("assets/images/splash.jpg",height: double.infinity,width: double.infinity,fit: BoxFit.cover,),
    );
  }
}
