import 'package:flutter/material.dart';
import 'package:flutter_getx/routes/routes_name.dart';
import '../pages/second_page.dart';
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
                  onPressed: () => Get.to(
                        () => SecondPage(),
                      ),
                  child: Text('Next Page >>')),
              ElevatedButton(
                  onPressed: () => Get.toNamed(NamesRoute.secondPage),
                  child: Text('Next Page - toNamed >>')),
              ElevatedButton(
                  onPressed: () => Get.off(SecondPage()),
                  child: Text('Next - Off >>')),
              ElevatedButton(
                  onPressed: () async {
                    var data = await Get.to(() => SecondPage(),
                        arguments: 'This is Args from Home Page');
                    print(data);
                  },
                  child: Text('Next Page - Arguments >>')),
            ],
          ),
        ));
  }
}
