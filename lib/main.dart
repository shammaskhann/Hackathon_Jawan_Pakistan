import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon2/resources/Routes/route_name.dart';
import 'package:hackathon2/resources/Routes/routes.dart';
import 'package:hackathon2/views/home/home_view.dart';
import 'package:hackathon2/views/splash/splash_view.dart';

import 'resources/Colors/colors.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: RouteName.splash,
      getPages: AppRoutes.appRoute(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        appBarTheme: const AppBarTheme(
          toolbarHeight: 80, // Set the toolbarHeight here
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: AppColors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold),
          color: AppColors.secondary,
          iconTheme: IconThemeData(color: AppColors.white),
        ),
      ),
    );
  }
}
