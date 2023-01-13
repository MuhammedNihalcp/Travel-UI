import 'dart:async';

import 'package:get/get.dart';
import 'package:travel_ui/Screen/view/screen_home.dart';

class SplashContorller extends GetxController {
  void splashTimer() {
    Timer(const Duration(seconds: 3), () async {
      Get.offAll(() => ScreenHome());
    });
  }
}
