import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthController extends GetxController {
  var isAuth = false.obs;

  Map<String, String> _dataUser = {
    'email': 'admin@gmail.com',
    'password': 'admin',
  };

  void dialogError(String msg) {
    Get.defaultDialog(
        title: 'Terjadi Kesalahan',
        middleText: msg,
        textConfirm: 'Confirm',
        contentPadding: EdgeInsets.all(20),
        confirmTextColor: Colors.white);
  }

  void login(String email, String password, bool rememberme) {
    if (email != '' && password != '') {
      if (GetUtils.isEmail(email) && password != '') {
        if (email == _dataUser['email'] && password == _dataUser['password']) {
          if (rememberme) {
            final box = GetStorage();
            box.write('dataUser', {
              'email': email,
              'password': password,
              'rememberme': rememberme
            });
          } else {
            final box = GetStorage();
            if (box.read('dataUser') != null) {
              box.erase();
            }
          }
          isAuth.value = true;
        } else {
          dialogError('Data user tidak valid');
        }
      } else {
        dialogError('Email dan Password tidak valid');
      }
    } else {
      dialogError('Email dan Password tidak boleh kosong');
    }
  }

  Future<void> autoLogin() async {
    final box = GetStorage();
    final data = box.read('dataUser');
    if (data != null) {
      print(data['email']);
      login(data['email'], data['password'], data['rememberme']);
    }
  }

  void logout(bool rememberme) {
    final box = GetStorage();
    if (rememberme == false) {
      if (box.read('dataUser') != null) {
        box.erase();
      }
    }
    isAuth.value = false;
  }
}
