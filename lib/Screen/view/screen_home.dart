import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_ui/Screen/controller/home_controller.dart';
import 'package:travel_ui/Screen/widget/home_carousal/home_carousal.dart';
import 'package:travel_ui/Screen/widget/home_listview/home_listview.dart';
import 'package:travel_ui/Screen/widget/search_bar/search_bar.dart';
import 'package:travel_ui/core/const/colors.dart';
import 'package:travel_ui/core/const/size.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

  final width = Get.size.width;
  final height = Get.size.height;

  final homeContorller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GetBuilder<HomeController>(
              builder: (controller) => Column(
                children: [
                  SearchBar(width: width, height: height),
                  kHeight10,
                  HomeCarousal(
                      contorller: homeContorller, width: width, height: height),
                  kHeight5,
                  AnimatedSmoothIndicator(
                    activeIndex: homeContorller.activeIndex,
                    count: homeContorller.travelImage.length,
                    effect: const WormEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                        dotColor: elevatedColor,
                        activeDotColor: serchColor),
                  ),
                  kHeight10,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text(
                          'Happening Tomorrow, near you',
                          style: TextStyle(
                            color: serchColor,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  kHeight10,
                  HomeListView(
                    width: width,
                    height: height,
                   images: homeContorller.gridtravelImage,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
