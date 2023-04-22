import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/addC.dart';
import '../controllers/usersC.dart';

class AddPage extends StatelessWidget {
  final addC = Get.find<AddC>();
  final usersC = Get.find<UsersC>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Task"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              TextField(
                controller: addC.titleController,
                textInputAction: TextInputAction.next,
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: "Task Name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                controller: addC.descController,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: "Description",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                controller: addC.deadlineController,
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.done,
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: "Deadline",
                  border: OutlineInputBorder(),
                ),
                onEditingComplete: () => usersC.add(
                  addC.titleController.text,
                  addC.descController.text,
                  addC.deadlineController.text,
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => usersC.add(
                  addC.titleController.text,
                  addC.descController.text,
                  addC.deadlineController.text,
                ),
                child: Text("ADD USER"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
