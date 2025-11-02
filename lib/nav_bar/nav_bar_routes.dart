import 'package:flutter/material.dart';
import 'package:food_delivery/home_pages/home_page.dart';
import 'package:food_delivery/home_pages/profile_screen.dart';
import 'package:food_delivery/nav_bar/bav_bar_screen.dart';
import 'package:food_delivery/order_pages/views/order_screen.dart';

class NavBarRoutes extends StatefulWidget {
  const NavBarRoutes({super.key});

  @override
  State<NavBarRoutes> createState() => _MainScreenState();
}

class _MainScreenState extends State<NavBarRoutes> {
  int selectedIndex = 0;

  final List<Widget> pages = [HomePage(), OrderScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: CustomNavBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
