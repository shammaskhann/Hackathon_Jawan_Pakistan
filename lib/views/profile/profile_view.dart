import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon2/resources/Colors/colors.dart';

import '../../resources/Images/images.dart';
import '../../resources/Routes/route_name.dart';
import '../../utils/shared_pref.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 70,
              backgroundColor: AppColors.primary,
              child: Icon(
                Icons.person,
                size: 100,
                color: AppColors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Alvart Ainstain",
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
          TextButton(
            onPressed: () {
              SharedPref.storeValue('id', '');
              Get.offAllNamed(RouteName.signIn);
            },
            child: Text("Logout"),
          )
        ],
      ),
      backgroundColor: AppColors.secondary,
    );
  }
}
