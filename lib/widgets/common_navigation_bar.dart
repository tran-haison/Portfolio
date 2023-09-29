import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

import '../res/assets.dart';
import '../res/colors.dart';
import 'common_button.dart';
import 'common_images.dart';
import 'common_text_styles.dart';

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
                _buildNavigationItem(Constants.text.home),
                _buildNavigationItem(Constants.text.about),
                _buildNavigationItem(Constants.text.experience),
                _buildNavigationItem(Constants.text.projects),
                _buildNavigationItem(Constants.text.contact),
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
