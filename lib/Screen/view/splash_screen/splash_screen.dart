import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:travel_ui/Screen/controller/splash_controller/splash_contorller.dart';
import 'package:travel_ui/core/const/colors.dart';

class ScreenSplash extends StatelessWidget {
  ScreenSplash({super.key});

  final splashC = Get.put(SplashContorller());
  final width = Get.size.width;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      splashC.splashTimer();
    });
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage(
                  'assets/images/Screenshot_2023-01-13-20-39-39-93_40deb401b9ffe8e1df2f1cc5ba480b12.jpg'),
            ),
            Text(
              'OJOURN',
              style: TextStyle(
                color: const Color.fromARGB(255, 5, 53, 92),
                fontWeight: FontWeight.bold,
                fontSize: width * 0.15,
              ),
            )
          ],
        ),
      )),
    );
  }
}
