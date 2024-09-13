import 'package:ebt_flutter_elearning/core/constants/ebt_color.dart';
import 'package:ebt_flutter_elearning/core/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class EbtSnackbar {
  EbtSnackbar._();

  static customToast(BuildContext context, {required message}) {
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          elevation: 0,
          duration: const Duration(seconds: 3),
          backgroundColor: Colors.transparent,
          content: Container(
            padding: const EdgeInsets.all(12.0),
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: EbtHelper.isDarkMode(context)
                  ? EbtColor.darkerGrey.withOpacity(0.4)
                  : EbtColor.grey.withOpacity(0.9),
            ),
            child: Center(
                child: Text(
              message,
              style: Theme.of(context).textTheme.labelLarge,
            )),
          ),
        ),
      );
  }

  static infoSnackBar({required title, message = '', duration = 3}) {
    Get.snackbar(
      "Tips",
      "Login expired, please login again!",
      // snackPosition: SnackPosition.BOTTOM,
    );
  }

  static successSnackBar({
    required title,
    message = '',
    duration = 2,
  }) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      backgroundColor: EbtColor.primary,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
      margin: const EdgeInsets.all(12),
      icon: const Icon(
        Iconsax.tick_circle,
        color: EbtColor.white,
      ),
    );
  }

  static warningSnackBar({
    required title,
    message = '',
    duration = 3,
  }) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      backgroundColor: Colors.orange,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
      margin: const EdgeInsets.all(12),
      icon: const Icon(
        Iconsax.warning_2,
        color: EbtColor.white,
      ),
    );
  }

  static errorSnackBar({
    required title,
    message = '',
    duration = 3,
  }) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: Colors.white,
      backgroundColor: Colors.red.shade600,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
      margin: const EdgeInsets.all(12),
      icon: const Icon(
        Iconsax.warning_2,
        color: EbtColor.white,
      ),
    );
  }
}
