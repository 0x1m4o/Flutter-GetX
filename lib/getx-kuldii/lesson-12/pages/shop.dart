/// Packages
import 'package:flutter/material.dart';
import '../widgets/shoptile.dart';
import '../controllers/mycontroller.dart';
import 'package:get/get.dart';

/// Files

class ShopPage extends StatelessWidget {
  final totalCont = Get.find<ShopController>(tag: 'total-controller');
  final quantity = Get.create<ShopController>(() => ShopController(),
      tag: 'quantity-controller');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Shop Page')),
        floatingActionButton:
            CircleAvatar(child: Obx(() => Text('${totalCont.total}'))),
        body: Column(children: [
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => ShopTile(),
              ),
            ),
          ),
        ]));
  }
}
