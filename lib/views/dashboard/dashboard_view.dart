import 'package:flutter/material.dart';
import 'package:hackathon2/resources/Icons/icons.dart';
import 'package:hackathon2/views/chats/chat_view.dart';
import 'package:hackathon2/views/home/home_view.dart';
import 'package:hackathon2/views/profile/profile_view.dart';
import 'package:hackathon2/views/projects/project_view.dart';

import '../../resources/Colors/colors.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  static const Screens = [
    HomeView(),
    ProjectView(),
    Text("ADD TASK"),
    ChatView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Screens.elementAt(_currentIndex),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 56.0, // same as FloatingActionButton default size
        width: 56.0, // same as FloatingActionButton default size
        decoration: const BoxDecoration(
          color: AppColors.primary,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Image.asset(AppIcons.add,
              color: (_currentIndex == 2) ? AppColors.white : AppColors.white),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(AppIcons.home,
                color:
                    (_currentIndex == 0) ? AppColors.primary : AppColors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Image.asset(AppIcons.folder,
                  color: (_currentIndex == 1)
                      ? AppColors.primary
                      : AppColors.grey),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppIcons.chat,
                color:
                    (_currentIndex == 3) ? AppColors.primary : AppColors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppIcons.hrofile,
                color:
                    (_currentIndex == 4) ? AppColors.primary : AppColors.grey),
            label: '',
          ),
        ],
        currentIndex: _currentIndex,
        backgroundColor: AppColors.secondary,
        // selectedItemColor: AppColors.primary,
        onTap: _onItemTapped,
        showSelectedLabels: false, // Add this
        showUnselectedLabels: false, // Add this
      ),
    );
  }
}
