import 'package:flutter/material.dart';

import '../res/colors.dart';
import 'common_images.dart';

class CommonItemSocial extends StatefulWidget {
  const CommonItemSocial({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final String icon;
  final VoidCallback onTap;

  @override
  State<CommonItemSocial> createState() => _CommonItemSocialState();
}

class _CommonItemSocialState extends State<CommonItemSocial> {
  var isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (onHover) {
        setState(() {
          isHover = onHover;
        });
      },
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorsRes.green3.withOpacity(0.2),
        ),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          padding: EdgeInsets.symmetric(
            vertical: isHover ? 5 : 10,
            horizontal: isHover ? 5 : 10,
          ),
          child: CommonAssetImage(
            image: widget.icon,
          ),
        ),
      ),
    );
  }
}
