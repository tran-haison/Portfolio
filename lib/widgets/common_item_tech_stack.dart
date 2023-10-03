import 'package:flutter/material.dart';

import '../res/colors.dart';
import 'common_images.dart';

class CommonItemTechStack extends StatelessWidget {
  const CommonItemTechStack({
    Key? key,
    required this.image,
    this.width,
    this.height,
    this.imageColor,
    this.backgroundColor,
    this.padding,
    this.radius,
  }) : super(key: key);

  final String image;
  final double? width;
  final double? height;
  final Color? imageColor;
  final Color? backgroundColor;
  final double? padding;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 50,
      height: height ?? 50,
      padding: EdgeInsets.all(padding ?? 12),
      decoration: BoxDecoration(
        color: backgroundColor ?? ColorsRes.black,
        borderRadius: BorderRadius.circular(radius ?? 10),
      ),
      child: CommonAssetImage(
        image: image,
        color: imageColor,
      ),
    );
  }
}
