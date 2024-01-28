import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/Routes/route_name.dart';

class SignInController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final isLoading = false.obs;

  navToSignUp() {
    Get.toNamed(RouteName.signUp);
  }
}
