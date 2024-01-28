import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon2/models/user_model.dart';
import 'package:hackathon2/utils/utils.dart';

import '../../resources/Routes/route_name.dart';
import '../../services/api_client.dart';
import '../../utils/shared_pref.dart';

class TaskController extends GetxController {
  final taskName = TextEditingController();
  final date = TextEditingController();
  final startTime = TextEditingController();
  final endTime = TextEditingController();
  RxBool isUrgent = false.obs;
  RxBool isOngoing = false.obs;
  RxBool isRunning = false.obs;
  RxBool isLoading = false.obs;
  ApiClient apiClient = ApiClient();

  void addTask() async {
    String id = await SharedPref.readValue('id');
    String? board;
    if (isUrgent.value) {
      board = 'Urgent';
    } else if (isOngoing.value) {
      board = 'Ongoing';
    } else if (isRunning.value) {
      board = 'Running';
    } else {
      board = 'Completed';
    }
    isLoading(true);
    try {
      Tasks task = Tasks(
          taskname: taskName.text,
          starttime: startTime.text,
          endtime: endTime.text,
          data: date.text,
          board: board);
      await apiClient.putNewTask(id, task);
      Utils.toastMessage("Task Added Successfully");
      Get.offAllNamed(RouteName.dashboard);
      isLoading(false);
    } catch (e) {
      log(e.toString());
    }
  }
}
