/// Packages
import 'package:flutter/material.dart';
import '../controllers/mycontroller.dart';
import 'package:get/get.dart';

/// Files
import './textpage.dart';

class CountPage extends StatelessWidget {
  /// For using Get.put i recommend to put the Controllers in the State that you
  /// need because if you put in the first place like MaterialApp, the Controller
  /// ill run there and the Controllers cannot auto deleted from the memory

  // final countController = Get.put(MyController());

  final counterCounterLazyPut = Get.find<MyController>(tag: 'Lazy-Put');

  // final countController =
  //     Get.put(MyController(), tag: 'count-controller', permanent: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Count Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text('Counter ${counterCounterLazyPut.counter}')),
          // Obx(() => Text('Counter ${countController.counter}')),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                  onPressed: () => counterCounterLazyPut.delete(),
                  child: Icon(Icons.remove)),
              OutlinedButton(
                  onPressed: () => counterCounterLazyPut.add(),
                  child: Icon(Icons.add)),
              // OutlinedButton(
              //     onPressed: () => countController.delete(),
              //     child: Icon(Icons.remove)),
              // OutlinedButton(
              //     onPressed: () => countController.add(),
              //     child: Icon(Icons.add)),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: ElevatedButton(
                onPressed: () => Get.to(() => TextPage()),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Text Page'), Icon(Icons.navigate_next)])),
          ),
        ],
      )),
    );
  }
}
