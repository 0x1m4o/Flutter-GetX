import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddC extends GetxController {
  late TextEditingController titleController;
  late TextEditingController descController;
  late TextEditingController deadlineController;

  @override
  void onInit() {
    super.onInit();
    titleController = TextEditingController();
    descController = TextEditingController();
    deadlineController = TextEditingController();
  }

  @override
  void onClose() {
    titleController.dispose();
    descController.dispose();
    deadlineController.dispose();
    super.onClose();
  }
}
