import 'package:get/get.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:hackathon2/resources/Colors/colors.dart';

class Utils {
  static void toastMessage(String message) {
    Get.snackbar(
      'Message',
      message,
      snackPosition: SnackPosition.TOP,
      backgroundColor: AppColors.secondary,
      colorText: AppColors.primary,
      borderRadius: 10,
      snackStyle: SnackStyle.FLOATING,
      duration: const Duration(seconds: 2),
    );
  }
}
