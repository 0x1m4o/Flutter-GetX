import 'package:flutter/material.dart';
import '../controllers/text_controller.dart';
import 'package:get/get.dart';

class TextPage extends StatelessWidget {
  final textController = Get.put(TextController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: TextField(
          controller: textController.myController,
        ),
      ),
    );
  }
}
