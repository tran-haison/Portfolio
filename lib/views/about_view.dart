import 'package:flutter/material.dart';
import 'package:portfolio/common/base_state_mixin.dart';
import 'package:portfolio/res/assets.dart';
import 'package:portfolio/res/colors.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/common_content_layout.dart';
import 'package:portfolio/widgets/common_gaps.dart';
import 'package:portfolio/widgets/common_images.dart';
import 'package:portfolio/widgets/common_text_styles.dart';

import '../widgets/common_item_tech_stack.dart';

class AboutView extends StatefulWidget {
  const AboutView({super.key});

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> with BaseStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildHeader(ColorsRes.green3),
              CommonContentLayout(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildPageTitle(Constants.text.about),
                    Gaps.vGap100,
                    _buildBasicInfo(),
                    Gaps.vGap100,
                    _buildShortDescription(),
                    Gaps.vGap100,
                    _buildDetailedInfo(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(Color backgroundColor) {
    return Row(
      children: [
        Container(
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
            color: ColorsRes.white,
          ),
        ),
      ],
    );
  }

  Widget _buildPageTitle(String title) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: CommonTextStyles.highlight,
        ),
      ],
    );
  }

  Widget _buildBasicInfo() {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 50,
      runSpacing: 50,
      children: [
        const CommonAssetImage(
          image: Assets.imgAvatar,
          height: 250,
          width: 250,
          radius: 150,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Constants.text.haiSonTran2,
              style: CommonTextStyles.title,
            ),
            Gaps.vGap20,
            Text(
              Constants.text.positionTitle,
              style: CommonTextStyles.medium.copyWith(
                color: ColorsRes.white,
              ),
            ),
            Gaps.vGap20,
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CommonItemTechStack(
                  image: Assets.imgAndroid,
                ),
                Gaps.hGap20,
                CommonItemTechStack(
                  image: Assets.imgIos,
                  imageColor: ColorsRes.white,
                ),
                Gaps.hGap20,
                CommonItemTechStack(
                  image: Assets.imgFlutter,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildShortDescription() {
    return Text(
      Constants.text.shortDescription,
      style: CommonTextStyles.title,
      textAlign: TextAlign.center,
    );
  }

  Widget _buildDetailedInfo() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _buildItemInfo(
                primaryText: Constants.text.numberOfExperience,
                secondaryText: Constants.text.yearsOfExperience,
              ),
            ),
            Expanded(
              child: _buildItemInfo(
                primaryText: Constants.text.numberOfProjects,
                secondaryText: Constants.text.projectsDone,
              ),
            ),
            Expanded(
              child: _buildItemInfo(
                primaryText: Constants.text.numberOfPlatforms,
                secondaryText: Constants.text.platformsUsed,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildItemInfo({
    required String primaryText,
    required String secondaryText,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          primaryText,
          style: CommonTextStyles.highlight.copyWith(
            color: ColorsRes.primary,
          ),
        ),
        Gaps.vGap20,
        Text(
          secondaryText,
          style: CommonTextStyles.medium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}