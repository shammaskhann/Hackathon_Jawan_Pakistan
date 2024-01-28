import 'package:flutter/material.dart';
import 'package:hackathon2/resources/Colors/colors.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final bool isPassword;
  final bool isLoading;
  final TextInputType keyboardType;

  const CustomTextField({
    Key? key,
    required this.title,
    required this.controller,
    this.isPassword = false,
    this.isLoading = false,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      keyboardType: keyboardType,
      enabled: !isLoading,
      decoration: InputDecoration(
        hintText: "Enter your $title",
        hintStyle: const TextStyle(
          color: AppColors.grey,
          fontSize: 16,
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(color: AppColors.grey),
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.grey),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(color: AppColors.primary),
        ),
      ),
    );
  }
}
