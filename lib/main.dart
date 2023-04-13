import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/counter_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MaterialApp(
        home: HomePage(),
        theme: controller.isDark.value ? ThemeData.dark() : ThemeData.light(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final counter = Get.find<CounterController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Counter Apps'),
        actions: [
          IconButton(
              onPressed: () => counter.changeTheme(),
              icon: counter.isDark.value
                  ? Icon(Icons.light_mode)
                  : Icon(Icons.dark_mode))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  'Angka ${counter.counter}',
                  style: const TextStyle(fontSize: 30),
                )),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () => counter.increment(),
                  child: const Icon(Icons.remove),
                ),
                OutlinedButton(
                  onPressed: () => counter.increment(),
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
