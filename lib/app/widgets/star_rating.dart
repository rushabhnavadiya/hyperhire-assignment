import 'package:flutter/material.dart';
import 'package:hyperhire_assignment/app/constants/constant_colors.dart';
import 'package:hyperhire_assignment/app/constants/constant_images.dart';

class StarRating extends StatelessWidget {
  final int? starCount;
  final int? rating;
  final double? iconSize;
  final double? gap;
  final Color? color;
  final Color? disabledColor;

  const StarRating({super.key, this.starCount = 5, this.rating = 0, this.color = yellowColor, this.disabledColor = tagBGColor, this.iconSize = 20, this.gap = 1});

  Widget buildStar(BuildContext context, int index) {
    Image icon;
    if (index >= rating!) {
      icon = Image.asset(
        starIcon,
        color: disabledColor,
        height: iconSize,
        width: iconSize,
      );
    }
    else if (index > rating! - 1 && index < rating!) {
      icon = Image.asset(
        starIcon,
        color: disabledColor,
        height: iconSize,
        width: iconSize,
      );
    } else {
      icon = Image.asset(
        starIcon,
        color: color,
        height: iconSize,
        width: iconSize,
      );
    }
    return Padding(
      padding: EdgeInsets.only(right: gap!),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: List.generate(starCount!, (index) => buildStar(context, index)));
  }
}