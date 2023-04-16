import 'package:flutter/material.dart';
import './controllers/count_controller.dart';
import 'package:get/get.dart';
import './pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final countController = Get.put(CountController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MyHome(),
    );
  }
}
