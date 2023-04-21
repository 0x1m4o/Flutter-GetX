/// Packages
import 'package:flutter/material.dart';
import './controllers/mycontroller.dart';
import 'package:get/get.dart';
import './routes/app-route.dart';

/// Files
import './pages/homepage.dart';
import './utils/translate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MyHome(),
      theme: ThemeData.dark(),
      translations: Translate(),
      locale: Locale('en'),
      getPages: AppPage.routes,
    );
  }
}
