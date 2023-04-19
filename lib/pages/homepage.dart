/// Packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Files
import './textpage.dart';

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
                onPressed: () => Get.to(() => TextPage()),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Text Page'), Icon(Icons.navigate_next)])),
          ),
        ],
      ),
    );
  }
}
