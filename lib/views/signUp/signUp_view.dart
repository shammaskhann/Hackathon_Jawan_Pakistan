import 'package:flutter/material.dart';
import 'package:hackathon2/resources/Colors/colors.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign Up",
          style: TextStyle(color: AppColors.white),
        ),
      ),
      body: const Center(
        child: Text("Sign Up"),
      ),
      backgroundColor: AppColors.secondary,
    );
  }
}
