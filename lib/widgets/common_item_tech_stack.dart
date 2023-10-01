import 'package:flutter/material.dart';

import '../res/colors.dart';
import 'common_images.dart';

class CommonItemTechStack extends StatelessWidget {
  const CommonItemTechStack({
    Key? key,
    required this.image,
    this.imageColor,
  }) : super(key: key);

  final String image;
  final Color? imageColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: ColorsRes.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: CommonAssetImage(
        image: image,
        color: imageColor,
      ),
    );
  }
}
