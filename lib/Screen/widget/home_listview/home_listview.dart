import 'package:flutter/material.dart';

import 'package:travel_ui/core/const/colors.dart';
import 'package:travel_ui/core/const/size.dart';

class HomeListView extends StatelessWidget {
  const HomeListView(
      {Key? key,
      required this.width,
      required this.height,
      required this.images,
      required this.text,
      required this.desctription,
      required this.price})
      : super(key: key);

  final double width;
  final double height;
  final List<String> images;
  final String text;
  final String desctription;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                text,
                style: const TextStyle(
                  color: serchColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        LimitedBox(
          maxWidth: width * 0.5,
          maxHeight: height * 0.4,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(images.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: width * 0.35,
                      height: height * 0.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(images[index]),
                            fit: BoxFit.cover),
                      ),
                    ),
                    kHeight5,
                    SizedBox(
                      width: width * 0.35,
                      child: Text(
                        desctription,
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                        style: const TextStyle(
                          color: serchColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    kHeight2,
                    Text(
                      price,
                      style: const TextStyle(color: serchColor),
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
                          '4.9(32)',
                          style: TextStyle(color: serchColor),
                        )
                      ],
                    )
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
