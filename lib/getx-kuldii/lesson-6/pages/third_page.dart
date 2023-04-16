import '../pages/fourth_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Third Page'),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () => Get.back(), child: Text('<< Back')),
                  ElevatedButton(
                      onPressed: () => Get.to(() => FourthPage()),
                      child: Text('Next >>')),
                ],
              )
            ],
          ),
        ));
  }
}
