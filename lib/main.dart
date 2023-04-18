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
              onPressed: () => Get.defaultDialog(

                  /// Default
                  title: 'Halo this is title',
                  middleText: 'This is middle Text',
                  middleTextStyle: TextStyle(overflow: TextOverflow.ellipsis),
                  textCancel: 'Cancel',
                  textConfirm: 'Confirm',
                  confirmTextColor: Colors.white,
                  onCancel: () => Get.back(),
                  // barrierDismissible: false
                  titlePadding: EdgeInsets.all(10),
                  contentPadding: EdgeInsets.all(10)

                  /// Custom
                  // cancel: ElevatedButton(
                  //     onPressed: () => Get.back(), child: Text('Cancel')),
                  // confirm: ElevatedButton(
                  //     onPressed: () => Get.back(), child: Text('Confirm')),
                  ),
              /* Get.dialog(AlertDialog(
                  title: Text('Halo this is title'),
                  content: Text('Halo this is content'),
                  actions: [
                    ElevatedButton(
                        onPressed: () => Get.back(), child: Text('Cancel')),
                    ElevatedButton(
                        onPressed: () => Get.back(), child: Text('Confirm')),
                  ],
                ) */
            )));
  }
}
