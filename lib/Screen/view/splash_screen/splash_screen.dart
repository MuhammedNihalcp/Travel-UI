import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:travel_ui/Screen/controller/splash_controller/splash_contorller.dart';
import 'package:travel_ui/core/const/colors.dart';

class ScreenSplash extends StatelessWidget {
  ScreenSplash({super.key});

  final splashC = Get.put(SplashContorller());

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      splashC.splashTimer();
    });
    return const Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Center(
        child: Image(
            image: AssetImage(
                'assets/images/Screenshot_2023-01-13-20-39-39-93_40deb401b9ffe8e1df2f1cc5ba480b12.jpg')),
      )),
    );
  }
}
