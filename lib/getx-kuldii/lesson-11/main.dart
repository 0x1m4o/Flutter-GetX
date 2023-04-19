/// Packages
import 'package:flutter/material.dart';
import './controllers/mycontroller.dart';
import 'package:get/get.dart';

/// Files
import './pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  /// On using LazyPut if you leave the state the controller totally remove and cannot created again.
  /// To make it not totally remove use fenix so the controller not full deleted from the memory
  final counterCounterLazyPut =
      Get.lazyPut(() => MyController(), fenix: true, tag: 'Lazy-Put');

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MyHome(),
    );
  }
}
