import 'dart:convert';

import 'package:get/get.dart';

class UserProvider extends GetConnect {
  final url =
      'https://getx-getconnect-ec2b2-default-rtdb.asia-southeast1.firebasedatabase.app/';

  /// Post
  Future<Response> postUser(String title, String desc, String deadline) {
    final body = json.encode({
      "title": title,
      "desc": desc,
      "deadline": deadline,
    });
    return post(url + 'task.json', body);
  }

  /// Delete
  Future<Response> deleteUser(String id) {
    return delete(url + 'task/$id.json');
  }

  /// Edit Data
  Future<Response> editUser(
      String id, String title, String desc, String deadline) {
    final body = json.encode({
      "title": title,
      "desc": desc,
      "deadline": deadline,
    });
    return patch('${url}task/$id.json', body);
  }

  /// Get Data
  Future<Response> getUser() {
    return get('${url}task.json');
  }
}
