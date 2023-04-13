import 'package:flutter/material.dart';
import './controllers/counter_controller.dart';
import 'package:flutter_getx/controllers/people_controller.dart';
import './models/people.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var people = Get.put(PeopleController());
  final controller = Get.put(CounterController());
  final inputName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Counter Apps'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Using OBX Widget

            // Obx(() => Text(
            //       'Nama ${people.peopleController.value.name}',
            //       style: const TextStyle(fontSize: 30),
            //     )),
            // SizedBox(
            //   height: 25,
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20),
            //   child: Column(
            //     children: [
            //       TextField(
            //           controller: inputName,
            //           onChanged: (value) =>
            //               people.peopleController.update((val) {
            //                 people.peopleController.value.name = value;
            //               })),
            //       Container(
            //         margin: EdgeInsets.only(top: 30),
            //         width: double.infinity,
            //         child: OutlinedButton(
            //             onPressed: () => people.changeToUpperCase(),
            //             child: Text('Uppercase Name')),
            //       )
            //     ],
            //   ),
            // ),

            /// Using GetX Widget
            // GetX<CounterController>(
            //   init: CounterController(),
            //   builder: (controller) {
            //     return Column(
            //       children: [
            //         Text('Angka ${controller.counter.value}'),
            //       ],
            //     );
            //   },
            // ),

            GetBuilder<CounterController>(
              builder: (controller) {
                return Column(
                  children: [
                    Text('Angka ${controller.counter}'),
                  ],
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () => controller.decrement(),
                  child: const Icon(Icons.remove),
                ),
                OutlinedButton(
                  onPressed: () => controller.increment(),
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
