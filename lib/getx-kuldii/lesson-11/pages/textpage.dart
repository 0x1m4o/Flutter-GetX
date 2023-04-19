/// Packages
import 'package:flutter/material.dart';
import '../controllers/mycontroller.dart';
import 'package:get/get.dart';

class TextPage extends StatelessWidget {
  /// For using Get.put i recommend to put the Controllers in the State that you
  /// need because if you put in the first place like MaterialApp, the Controller
  /// ill run there and the Controllers cannot auto deleted from the memory

  // final TextController = Get.put(MyController());
  final textController =
      Get.put(MyController(), tag: 'text-controller', permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Page'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Username'),
              controller: textController.userText,
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Password'),
              controller: textController.password,
            ),
          ],
        ),
      )),
    );
  }
}
