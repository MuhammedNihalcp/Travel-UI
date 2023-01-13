import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_ui/Screen/controller/home_controller.dart';
import 'package:travel_ui/core/const/colors.dart';
import 'package:travel_ui/core/const/size.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({
    Key? key,
    required this.width,
    required this.height,
    required this.homeContorller,
  }) : super(key: key);

  final double width;
  final double height;
  final HomeController homeContorller;

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxWidth: width * 0.5,
      maxHeight: height * 0.4,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(homeContorller.gridtravelImage.length, (index) {
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
                        image:
                            NetworkImage(homeContorller.gridtravelImage[index]),
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
    );
  }
}
