import 'package:flutter/material.dart';
import 'package:portfolio/presentation/res/assets.dart';
import 'package:portfolio/presentation/res/colors.dart';
import 'package:portfolio/presentation/widgets/common_button.dart';
import 'package:portfolio/presentation/widgets/common_text_styles.dart';

import 'common_images.dart';

class CommonNavigationBar extends StatelessWidget {
  const CommonNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: ColorsRes.gray100,
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 50,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildLogo(),
          Flexible(
            child: Wrap(
              alignment: WrapAlignment.end,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 20,
              runSpacing: 5,
              children: [
                _buildNavigationItem('Home'),
                _buildNavigationItem('About'),
                _buildNavigationItem('Works'),
                _buildNavigationItem('Contact'),
                _buildButtonResume(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return const CommonAssetImage(
      image: Assets.imgLogo,
      width: 64,
      height: 64,
    );
  }

  Widget _buildNavigationItem(String text) {
    return Text(
      text,
      style: CommonTextStyles.medium,
    );
  }

  Widget _buildButtonResume() {
    return CommonButton(
      title: 'Resume',
      backgroundColor: ColorsRes.black87,
      borderRadius: 5,
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      onPressed: () {},
    );
  }
}
