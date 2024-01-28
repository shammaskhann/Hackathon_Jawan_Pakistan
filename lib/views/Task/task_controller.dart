import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskController extends GetxController {
  final taskName = TextEditingController();
  final date = TextEditingController();
  final startTime = TextEditingController();
  final endTime = TextEditingController();
  RxBool isUrgent = false.obs;
  RxBool isOngoing = false.obs;
  RxBool isRunning = false.obs;
  RxBool isLoading = false.obs;

  void addTask() {
    isLoading(true);
  }
}
