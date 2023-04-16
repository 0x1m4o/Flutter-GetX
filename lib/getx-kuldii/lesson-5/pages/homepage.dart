import 'package:flutter/material.dart';
import '../controllers/count_controller.dart';
import 'package:get/get.dart';

class MyHome extends StatelessWidget {
  final countController = Get.find<CountController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
              onPressed: () => countController.reset(),
              icon: Icon(Icons.refresh))
        ],
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Obx(() => Text('Change : ${countController.countChanges}x')),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              onChanged: (value) => countController.change(),
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
          ),
        ]),
      ),
    );
  }
}
