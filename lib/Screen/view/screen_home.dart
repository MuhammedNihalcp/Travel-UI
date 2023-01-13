import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_ui/Screen/controller/home_controller.dart';
import 'package:travel_ui/Screen/widget/home_carousal/home_carousal.dart';
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
                  LimitedBox(
                    maxWidth: width * 0.5,
                    maxHeight: height * 0.4,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                          homeContorller.gridtravelImage.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: width * 0.35,
                                height: height * 0.25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: NetworkImage(homeContorller
                                          .gridtravelImage[index]),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              kHeight5,
                              SizedBox(
                                width: width * 0.35,
                                child: const Text(
                                  'Kayking in back water, Adyar Boat club',
                                  maxLines: 2,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    color: serchColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              kHeight2,
                              const Text(
                                'Rs 1250 / Person',
                                style: TextStyle(color: serchColor),
                              ),
                              kHeight2,
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star_border,
                                    size: 15,
                                    color: serchColor,
                                  ),
                                  kWidth4,
                                  Text(
                                    '4.92(31)',
                                    style: TextStyle(color: serchColor),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



