import 'package:flutter/material.dart';

import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('GetX Dialog'),
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: () => Get.bottomSheet(Container(
                      color: Colors.grey[200],
                      padding: EdgeInsets.all(30),
                      child: Center(
                        child: ListView(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                  hintText: 'Username',
                                  border: OutlineInputBorder()),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: 'Username',
                                  border: OutlineInputBorder()),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: 'Username',
                                  border: OutlineInputBorder()),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    )))));
  }
}
