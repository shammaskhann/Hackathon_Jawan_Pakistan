import 'package:get/get.dart';
import 'package:hackathon2/resources/Routes/route_name.dart';
import 'package:hackathon2/views/artBoard/artBoard_view.dart';
import 'package:hackathon2/views/chats/chat_view.dart';
import 'package:hackathon2/views/home/home_view.dart';
import 'package:hackathon2/views/onBoarding/onBoard1_view.dart';
import 'package:hackathon2/views/signIn/signIn_view.dart';

import '../../views/dashboard/dashboard_view.dart';
import '../../views/signUp/signUp_view.dart';
import '../../views/splash/splash_view.dart';

class AppRoutes {
  static List<GetPage> appRoute() {
    return [
      GetPage(
          name: RouteName.splash,
          page: () => const SplashView(),
          transition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 1000)),
      GetPage(
          name: RouteName.artBoard,
          page: () => const ArtBoard(),
          transition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 1000)),
      GetPage(
          name: RouteName.onBoard,
          page: () => const OnBoardView(),
          transition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 1000)),
      GetPage(
          name: RouteName.signIn,
          page: () => const SignInView(),
          transition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 1000)),
      GetPage(
          name: RouteName.signUp,
          page: () => const SignUpView(),
          transition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 1000)),
      GetPage(
          name: RouteName.dashboard,
          page: () => const DashBoardScreen(),
          transition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 1000)),
      GetPage(
          name: RouteName.home,
          page: () => const HomeView(),
          transition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 1000)),
      GetPage(
          name: RouteName.chat,
          page: () => const ChatView(),
          transition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 1000)),
    ];
  }
}
