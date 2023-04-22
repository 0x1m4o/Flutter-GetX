import 'package:flutter/material.dart';
import '../controllers/loginC.dart';
import '../controllers/authC.dart';

import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final loginC = Get.find<LoginController>();
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: loginC.email,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Email'),
              ),
              SizedBox(
                height: 20,
              ),
              Obx(
                () => TextField(
                  controller: loginC.password,
                  obscureText: loginC.hidden.value,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () => loginC.hidden.toggle(),
                          icon: loginC.hidden.isTrue
                              ? Icon(Icons.remove_red_eye)
                              : Icon(Icons.remove_red_eye_outlined)),
                      border: OutlineInputBorder(),
                      labelText: 'Password'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Obx(
                () => CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text('Remember Me'),
                  value: loginC.rememberme.value,
                  onChanged: (value) => loginC.rememberme.toggle(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () => authC.login(loginC.email.text,
                      loginC.password.text, loginC.rememberme.value),
                  child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}
