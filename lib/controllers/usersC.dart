import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_getx/services/user_provider.dart';
import 'package:get/get.dart';
import '../models/user.dart';

class UsersC extends GetxController with StateMixin<Map<String, dynamic>> {
  var users = List<Task>.empty().obs;

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  void snackBarError(String msg) {
    Get.snackbar(
      "ERROR",
      msg,
      duration: Duration(seconds: 2),
    );
  }

  void getData() {
    try {
      UserProvider().getUser().then(
        (response) {
          if (response.statusCode == 200) {
            final data = response.body;
            data.forEach((key, value) {
              users.add(
                Task(
                  id: key,
                  title: '${value['title']}',
                  desc: '${value['desc']}',
                  deadline: '${value['deadline']}',
                ),
              );
            });

            change(data, status: RxStatus.success());
          }
        },
        onError: (_) {
          change(null, status: RxStatus.error('Tidak ada data dari API'));
        },
      );
    } catch (err) {
      change(null, status: RxStatus.error(err.toString()));
    }
  }

  void add(String title, String desc, String deadline) {
    if (title != '' && desc != '' && deadline != '') {
      if (desc.contains("@")) {
        UserProvider().postUser(title, desc, deadline).then((value) {
          users.add(
            Task(
              id: value.body['name'],
              title: title,
              desc: desc,
              deadline: deadline,
            ),
          );
        });

        Get.back();
      } else {
        snackBarError("Masukan desc valid");
      }
    } else {
      snackBarError("Semua data harus diisi");
    }
  }

  Task userById(String id) {
    return users.firstWhere((element) => element.id == id);
  }

  void edit(String id, String title, String desc, String deadline) {
    if (title != '' && desc != '' && deadline != '') {
      if (desc.contains("@")) {
        final user = userById(id);
        UserProvider().editUser(id, title, desc, deadline).then((value) {
          user.title = title;
          user.desc = desc;
          user.deadline = deadline;
          users.refresh();
        });
        Get.back();
      } else {
        snackBarError("Masukan desc valid");
      }
    } else {
      snackBarError("Semua data harus diisi");
    }
  }

  Future<bool> delete(String id) async {
    bool _deleted = false;
    await Get.defaultDialog(
      title: "DELETE",
      middleText: "Apakah kamu yakin untuk menghapus data user ini?",
      textConfirm: "Ya",
      confirmTextColor: Colors.white,
      onConfirm: () {
        UserProvider().deleteUser(id).then((value) {
          users.removeWhere((element) => element.id == id);
          _deleted = true;
        });
        Get.back();
      },
      textCancel: "Tidak",
    );
    return _deleted;
  }
}
