import 'package:flutter/material.dart';

class CommonAssetImage extends StatelessWidget {
  const CommonAssetImage({
    super.key,
    required this.image,
    this.height,
    this.width,
    this.color,
    this.fit,
    this.radius,
    this.backgroundColor,
    this.padding,
  });

  final String image;
  final double? height;
  final double? width;
  final Color? color;
  final BoxFit? fit;
  final double? radius;
  final Color? backgroundColor;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius ?? 0),
      ),
      padding: padding,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius ?? 0),
        child: Image.asset(
          image,
          color: color,
          fit: fit,
        ),
      ),
    );
  }
}
