import 'package:flutter/material.dart';

import 'package:travel_ui/core/const/colors.dart';

class CarousalText extends StatelessWidget {
  const CarousalText({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
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
                  minimumSize: Size(width * 0.15, height * 0.05)),
              onPressed: () {},
              child: const Text(
                'Read the article',
                style: TextStyle(
                  color: carosultextColor,
                ),
              ))
        ],
      ),
    );
  }
}
