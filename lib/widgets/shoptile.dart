import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/mycontroller.dart';
import 'package:get/get.dart';

class ShopTile extends StatelessWidget {
  final totalCont = Get.find<ShopController>(tag: 'total-controller');
  final quantityCont = Get.find<ShopController>();
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Produk'),
      trailing: Container(
        width: 150,
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          OutlinedButton(
            onPressed: () {
              if (quantityCont.quantity.value != 0) {
                totalCont.total--;
                quantityCont.quantity--;
              }
            },
            child: Icon(Icons.remove),
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.0)),
              minimumSize: Size(20, 30),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Obx(
            () => Text('${quantityCont.quantity}'),
          ),
          SizedBox(
            width: 10,
          ),
          OutlinedButton(
            onPressed: () {
              totalCont.total++;
              quantityCont.quantity++;
            },
            child: Icon(Icons.add),
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.0)),
              minimumSize: Size(20, 30),
            ),
          ),
        ]),
      ),
    );
  }
}
