import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hackathon2/resources/Colors/colors.dart';
import 'package:hackathon2/resources/Images/images.dart';
import 'package:hackathon2/views/splash/splash_controller.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    final splashController = Get.put(SplashController());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [SvgPicture.asset(AppImages.LogoImage)],
      ),
      backgroundColor: AppColors.primary,
    );
  }
}
