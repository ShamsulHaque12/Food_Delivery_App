import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// ✅ Dummy Order Data (If you already added in model file, remove this part)
final List<Map<String, dynamic>> ongoing = [
  {
    'name': 'Pizza',
    'price': 70,
    'image': 'assets/foods/pizzza.jpg',
    'items': '3 item',
    'time': '29 JAN, 12.30',
    'orderId': '#12454',
    'rate': 'Re Order',
  },
  {
    'name': 'Burger',
    'price': 50,
    'image': 'assets/foods/burger.jpg',
    'items': '1 item',
    'time': '29 JAN, 12.30',
    'orderId': '#12454',
    'rate': 'Re Order',
  },
];

final List<Map<String, dynamic>> history = [
  {
    'name': 'Salad',
    'price': 40,
    'image': 'assets/foods/salad.jpg',
    'items': '1 item',
    'time': '29 JAN, 12.30',
    'orderId': '#44512',
    'rate': 'Track Order',
  },
];

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("My Orders", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0,
        bottom: TabBar(
          controller: tabController,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.black,
          labelStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          tabs: const [Tab(text: "Ongoing"), Tab(text: "History")],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          buildOrderList(ongoing, false),
          buildOrderList(history, true),
        ],
      ),
    );
  }

  Widget buildOrderList(List<Map<String, dynamic>> data, bool showCancel) {
    if (data.isEmpty) {
      return const Center(
        child: Text(
          "No Orders Found",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: data.length,
      itemBuilder: (context, index) {
        final order = data[index];

        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                spreadRadius: 1,
                blurRadius: 4,
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      order['image'],
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          order['name'],
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          order['items'],
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                        Text(
                          order['time'],
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          order['orderId'],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              /// ✅ Buttons Section
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.snackbar(
                          order['name'],
                          "${order['rate']} button clicked!",
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        order['rate'],
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  if (showCancel)
                    SizedBox(
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            data.removeAt(index);
                          });
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          side: const BorderSide(color: Colors.red),
                        ),
                        child: const Text(
                          "Cancel",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
