import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../res/assets.dart';
import '../router/routers.dart';
import 'common_images.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.backgroundColor,
  }) : super(key: key);

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => context.go(Routers.home),
          child: Container(
            width: 60,
            height: 60,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(10),
              ),
            ),
            child: const CommonAssetImage(
              image: Assets.icHome,
            ),
          ),
        ),
      ],
    );
  }
}
