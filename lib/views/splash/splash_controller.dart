import 'package:get/get.dart';
import 'package:hackathon2/resources/Routes/route_name.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(RouteName.artBoard);
    });
  }
}
