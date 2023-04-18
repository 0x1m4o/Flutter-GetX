import 'package:flutter/material.dart';
import '../routes/routes_name.dart';
import 'product.dart';
import 'package:get/get.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => Get.toNamed(NamesRoute.product),
                  child: Text('All Products')),
            ],
          ),
        ));
  }
}
