import 'package:flutter/material.dart';

import 'package:travel_ui/core/const/colors.dart';

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
          backgroundColor: MaterialStateProperty.all(backgroundColor),
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
