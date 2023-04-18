import 'package:flutter/material.dart';
import '../routes/routes_name.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Detail Page'),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Product Name ${Get.parameters['name']}'),
              Text('Product Name ${Get.parameters['ukuran']}')
            ],
          ),
        ));
  }
}
