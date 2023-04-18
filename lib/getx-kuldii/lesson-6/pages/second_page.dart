import 'package:flutter/material.dart';
import '../routes/routes_name.dart';
import '../pages/third_page.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second Page'),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (Get.arguments != null) Text(Get.arguments.toString()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () => Get.back(
                          result: 'This is Result from Second Page - Get.Back'),
                      child: Text('<< Back')),
                  ElevatedButton(
                      onPressed: () => Get.to(() => ThirdPage()),
                      child: Text('Next - to >>')),
                  ElevatedButton(
                      onPressed: () => Get.toNamed(NamesRoute.thirdPage),
                      child: Text('Next - toNamed >>')),
                ],
              )
            ],
          ),
        ));
  }
}
