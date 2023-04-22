import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/loginC.dart';
import '../controllers/authC.dart';

class HomePage extends StatelessWidget {
  final loginC = Get.find<LoginController>();
  final authC = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
              onPressed: () => authC.logout(loginC.rememberme.value),
              icon: Icon(Icons.logout))
        ],
      ),
    );
  }
}
