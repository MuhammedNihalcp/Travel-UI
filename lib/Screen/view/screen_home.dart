import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_ui/Screen/controller/home_controller.dart';
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
                  Stack(
                    children: [
                      CarouselSlider.builder(
                        itemCount: homeContorller.travelImage.length,
                        itemBuilder: (context, index, realIndex) => Container(
                          width: width,
                          height: height * 0.3,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  NetworkImage(homeContorller.travelImage[index]),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        options: CarouselOptions(
                          height: height * 0.28,
                          aspectRatio: 16 / 9,
                          viewportFraction: 1,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 5),
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.3,
                          onPageChanged: (index, reason) {
                            homeContorller.changeIndex(index);
                          },
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                      Positioned(
                        top: height * 0.14,
                        left: width * 0.05,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Run to the Hills',
                              style: TextStyle(
                                color: carosultextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              "Plan your next trip to South india",
                              textWidthBasis: TextWidthBasis.longestLine,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.justify,
                              style: TextStyle(color: carosultextColor),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: elevatedColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20)),
                                    minimumSize:
                                        Size(width * 0.15, height * 0.05)),
                                onPressed: () {},
                                child: const Text(
                                  'Read the article',
                                  style: TextStyle(
                                    color: carosultextColor,
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
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
                                      image: NetworkImage(
                                          homeContorller.gridtravelImage[index]),
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

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: ButtonStyle(
          alignment: Alignment.centerLeft,
          backgroundColor:
              MaterialStateProperty.all(backgroundColor),
          fixedSize: MaterialStateProperty.all(
            Size(width, height * 0.1),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(
                color: serchColor,
                width: 2,
              ),
            ),
          )),
      onPressed: () {},
      icon: const Icon(
        Icons.search,
        color: serchColor,
        size: 26,
      ),
      label: const Text(
        'Search',
        style: TextStyle(
          color: serchColor,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
