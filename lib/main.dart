import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/authC.dart';
import 'package:get_storage/get_storage.dart';
import './pages/login_page.dart';
import 'package:get/get.dart';
import './routes/app_pages.dart';
import './pages/homepage.dart';
import './controllers/loginC.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final loginC = Get.put(LoginController());
  final authC = Get.put((AuthController()));
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: authC.autoLogin(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Obx(() => GetMaterialApp(
                home: authC.isAuth.value ? HomePage() : LoginPage(),
                getPages: AppPages.routes,
              ));
        } else {
          return MaterialApp(
            home: Scaffold(
                body: Center(
              child: CircularProgressIndicator(),
            )),
          );
        }
      },
    );
  }
}
