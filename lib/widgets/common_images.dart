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
  });

  final String image;
  final double? height;
  final double? width;
  final Color? color;
  final BoxFit? fit;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius ?? 0),
        child: Image.asset(
          image,
          height: height,
          width: width,
          color: color,
          fit: fit,
        ),
      ),
    );
  }
}
