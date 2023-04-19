/// Packages
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../controllers/mycontroller.dart';
import 'package:get/get.dart';

class TextPage extends StatelessWidget {
  final textController = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Page'),
      ),
      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   Get.putAsync<SharedPreferences>(() async {
      //     final prefs = await SharedPreferences.getInstance();
      //     await prefs.setString('userName', 'Chandra');
      //     textController.userText.value.text =
      //         prefs.getString('userName').toString();
      //     return prefs;
      //   });
      // }),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: GetBuilder(
          init: DataController(),
          // ignore: void_checks
          initState: (state) => textController.setData(),
          builder: (controller) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: textController.userText.value,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Username'),
              ),
              SizedBox(
                height: 30,
              ),
              Obx(
                () => TextField(
                  obscureText: textController.visiblePassw.value,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () => textController.visiblePass(),
                          icon: Icon(Icons.remove_red_eye)),
                      border: OutlineInputBorder(),
                      hintText: 'Password'),
                  controller: textController.password.value,
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
