import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_ui/Screen/controller/home_controller.dart';
import 'package:travel_ui/core/const/colors.dart';

class AnimationIndicator extends StatelessWidget {
  const AnimationIndicator({
    Key? key,
    required this.homeContorller,
  }) : super(key: key);

  final HomeController homeContorller;

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: homeContorller.activeIndex,
      count: homeContorller.travelImage.length,
      effect: const WormEffect(
          dotHeight: 10,
          dotWidth: 10,
          dotColor: elevatedColor,
          activeDotColor: serchColor),
    );
  }
}
