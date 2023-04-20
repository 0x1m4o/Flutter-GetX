/// Packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Files
import './shop.dart';
import '../routes/route-name.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      floatingActionButton: FloatingActionButton(
          onPressed: () => Get.updateLocale(Locale('id', 'jawa'))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text('info'.trArgs(['Hai', 'yaa'])),
          // Text('info'.trParams({'akrab': 'yaa'})),
          Text('info'.trParams({'akrab': 'yaa'})),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 80),
            child: ElevatedButton(

                /// Using Binding Builder in Get.to
                // onPressed: () => Get.to(() => ShopPage(),
                //     binding: BindingsBuilder(() =>
                //         Get.put(ShopController(), tag: 'total-controller'))),

                /// Get.toNamed to Binding separately. I created a folder binding and set the binding inside GetPage
                onPressed: () => Get.toNamed(
                      RouteNames.shop,
                    ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Shop Page'), Icon(Icons.navigate_next)])),
          ),
        ],
      ),
    );
  }
}
