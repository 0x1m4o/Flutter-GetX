import 'package:flutter/material.dart';
import '../controllers/count_controller.dart';
import 'textpage.dart';
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
              onPressed: () => Get.to(() => TextPage()),
              icon: Icon(Icons.next_plan))
        ],
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          GetBuilder<CountController>(
            builder: (controller) => Text('Angka ${controller.count}'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                onPressed: () => countController.decrement(),
                child: Icon(Icons.remove),
              ),
              OutlinedButton(
                onPressed: () => countController.increment(),
                child: Icon(Icons.add),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
