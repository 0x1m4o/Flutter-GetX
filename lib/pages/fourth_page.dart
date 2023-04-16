import '../pages/fourth_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fourth Page'),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => Get.back(), child: Text('<< Back'))
            ],
          ),
        ));
  }
}
