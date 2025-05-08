import 'package:flutter/material.dart';
import 'package:food_delivery/auth/signup_page.dart';
import 'package:get/get.dart';
import 'login_page.dart';

class Firstslider extends StatefulWidget {
  const Firstslider({super.key});

  @override
  State<Firstslider> createState() => _FirstsliderState();
}

class _FirstsliderState extends State<Firstslider> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;

  void nextPage() {
    if (currentIndex < 2) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      Get.to(() => LoginPage());
    }
  }

  final List<String> titles = [
    "All your favorites",
    "Order from chosen chef",
    "Free delivery offers",
  ];

  final List<String> subtitles = [
    "Get all your loved foods in one place,\nyou just place the order we do the rest",
    "Get all your loved foods in one place,\nyou just place the order we do the rest",
    "Get all your loved foods in one place,\nyou just place the order we do the rest",
  ];

  final List<String> images = [
    "assets/images/first.jpg",
    "assets/images/second.jpg",
    "assets/images/third.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: 3,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(images[index], height: 450),
                      const SizedBox(height: 24),
                      Text(
                        titles[index],
                        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        subtitles[index],
                        style: const TextStyle(fontSize: 18, color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                    (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: currentIndex == index ? Colors.orange : Colors.grey.shade300,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: nextPage,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                currentIndex == 2 ? "GET STARTED" : "NEXT",
                style: const TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.to(() => LoginPage());
              },
              child: const Text("Skip", style: TextStyle(color: Colors.grey)),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
