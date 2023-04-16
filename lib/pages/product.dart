import 'package:flutter/material.dart';
import 'package:flutter_getx/routes/routes_name.dart';

import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  var user = {
    'user1': ['Shoes', 'XL'],
    'user2': ['Socks', 'XXL'],
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Product Page'),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 200,
                      child: ListView.builder(
                        itemCount: user.length,
                        itemBuilder: (context, index) {
                          var userKey = user.keys.elementAt(index);
                          return ElevatedButton(
                              onPressed: () => Get.toNamed(NamesRoute.product +
                                  '/$userKey?name=${user['$userKey']![0]}&ukuran=${user['$userKey']![1]}'),
                              child: Text('Product ${userKey}'));
                        },
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
