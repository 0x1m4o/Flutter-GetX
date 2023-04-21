import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class UserProvider extends GetConnect {
  final url =
      'https://getx-getconnect-ec2b2-default-rtdb.asia-southeast1.firebasedatabase.app/';

  /// Post
  Future<Response> postUser(String name, String email, String phone) {
    final body = json.encode({
      "name": name,
      "email": email,
      "phone": phone,
    });
    return post(url + 'users.json', body);
  }

  /// Delete
  Future<Response> deleteUser(String id) {
    return delete(url + 'users/$id.json');
  }

  /// Edit Data
  Future<Response> editUser(
      String id, String name, String email, String phone) {
    final body = json.encode({
      "name": name,
      "email": email,
      "phone": phone,
    });
    return patch('${url}users/$id.json', body);
  }
}
