import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/Routes/route_name.dart';

class SignInController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final isLoading = false.obs;

  void navToSignUp() {
    Get.toNamed(RouteName.signUp);
  }

  void signIn() {
    Get.offAllNamed(RouteName.dashboard);
  }

  void forgetPassword() {
    log("Password");
  }
}
