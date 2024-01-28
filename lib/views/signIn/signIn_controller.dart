import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon2/services/api_client.dart';
import 'package:hackathon2/utils/shared_pref.dart';

import '../../models/user_model.dart';
import '../../resources/Routes/route_name.dart';
import '../../utils/utils.dart';

class SignInController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final isLoading = false.obs;
  static User? matchedUser;
  ApiClient apiClient = ApiClient();
  void navToSignUp() {
    Get.toNamed(RouteName.signUp);
  }

  void signIn() async {
    isLoading(true);
    try {
      List<User> response = await apiClient.getUsers();

      log(response.toString());
      for (var user in response) {
        if (user.email == emailController.text &&
            user.password == passwordController.text) {
          matchedUser = user;
          break;
        }
      }

      if (matchedUser != null) {
        Utils.toastMessage("Login Successful");
        log('Matched User ID: ${matchedUser!.sId}');
        await SharedPref.storeValue('id', '${matchedUser!.sId}');
        Get.offAllNamed(RouteName.dashboard);
        // Store matchedUser.id in a secure place
      } else {
        log('No user found with the provided email and password');
      }
    } catch (e) {
      log(e.toString());
    }
  }

  void forgetPassword() {
    log("Password");
  }
}
