/// Packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Files
import './shop.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 80),
            child: ElevatedButton(
                onPressed: () => Get.to(() => ShopPage()),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Shop Page'), Icon(Icons.navigate_next)])),
          ),
        ],
      ),
    );
  }
}
