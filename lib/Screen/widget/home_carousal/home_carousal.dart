import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/widgets.dart';
import 'package:travel_ui/Screen/controller/home_controller.dart';

import 'package:travel_ui/Screen/widget/carousal_text/carousal_text.dart';

class HomeCarousal extends StatelessWidget {
  const HomeCarousal({
    Key? key,
    required this.contorller,
    required this.width,
    required this.height,
  }) : super(key: key);

  final HomeController contorller;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: contorller.travelImage.length,
          itemBuilder: (context, index, realIndex) => Container(
            width: width,
            height: height * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(contorller.travelImage[index]),
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
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            onPageChanged: (index, reason) {
              contorller.changeIndex(index);
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
        CarousalText(height: height, width: width),
      ],
    );
  }
}
