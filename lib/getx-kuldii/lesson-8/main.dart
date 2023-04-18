import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX SnackBar'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.snackbar(
            'Ini Snackbar', 'Tempor sunt nulla excepteur officia .',
            backgroundColor: Colors.grey[400],
            borderWidth: 2,
            borderColor: Colors.grey[700],
            animationDuration: Duration(seconds: 2),
            duration: Duration(seconds: 2)),
        child: Icon(Icons.notifications_active_rounded),
      ),
    );
  }
}
