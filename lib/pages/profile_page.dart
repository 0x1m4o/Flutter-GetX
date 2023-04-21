import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/user.dart';
import '../controllers/usersC.dart';
import '../controllers/profileC.dart';

class ProfilePage extends StatelessWidget {
  final profileC = Get.find<ProfileC>();
  final userC = Get.find<UsersC>();
  final String uid = Get.arguments;

  @override
  Widget build(BuildContext context) {
    final Task task = userC.userById(uid);
    profileC.titleController.text = task.title!;
    profileC.descController.text = task.desc!;
    profileC.deadlineController.text = task.deadline!;

    return Scaffold(
      appBar: AppBar(
        title: Text("PROFILE"),
        actions: [
          IconButton(
            onPressed: () => userC.delete(uid).then(
              (deleted) {
                if (deleted) Get.back();
              },
            ),
            icon: Icon(Icons.delete_forever),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              TextField(
                controller: profileC.titleController,
                autocorrect: false,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: 'Task Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                controller: profileC.descController,
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                controller: profileC.deadlineController,
                autocorrect: false,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Deadline',
                  border: OutlineInputBorder(),
                ),
                onEditingComplete: () => userC.edit(
                  uid,
                  profileC.titleController.text,
                  profileC.descController.text,
                  profileC.deadlineController.text,
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => userC.edit(
                  uid,
                  profileC.titleController.text,
                  profileC.descController.text,
                  profileC.deadlineController.text,
                ),
                child: Text("UPDATE"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
