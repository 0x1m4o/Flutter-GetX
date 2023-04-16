import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './controllers/count_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetBuilder Unique ID - Menus'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GetBuilder(
              id: 'menuA',
              builder: (controller) =>
                  Text('Menu A - ${controller.menu['menuA']}'),
              init: CounterController(),
            ),
            GetBuilder(
              id: 'menuB',
              builder: (controller) =>
                  Text('Menu B - ${controller.menu['menuB']}'),
              init: CounterController(),
            ),
            GetBuilder(
              id: 'menuC',
              builder: (controller) =>
                  Text('Menu C - ${controller.menu['menuC']}'),
              init: CounterController(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    onPressed: () => Get.find<CounterController>().add(
                          id: 'menuA',
                        ),
                    child: const Text('Menu A')),
                OutlinedButton(
                    onPressed: () =>
                        Get.find<CounterController>().add(id: 'menuB'),
                    child: const Text('menu B')),
                OutlinedButton(
                    onPressed: () =>
                        Get.find<CounterController>().add(id: 'menuC'),
                    child: const Text('menu C')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
