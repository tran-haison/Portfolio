import 'package:flutter/material.dart';
import 'package:portfolio/common/base_state_mixin.dart';
import 'package:portfolio/res/assets.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/common_content_layout.dart';
import 'package:portfolio/widgets/common_images.dart';
import 'package:portfolio/widgets/common_page_title.dart';
import 'package:portfolio/widgets/common_text_styles.dart';
import 'package:portfolio/widgets/footer.dart';

import '../res/colors.dart';
import '../utils/constants.dart';
import '../widgets/common_gaps.dart';
import '../widgets/header.dart';

class ExperienceView extends StatefulWidget {
  const ExperienceView({super.key});

  @override
  State<ExperienceView> createState() => _ExperienceViewState();
}

class _ExperienceViewState extends State<ExperienceView> with BaseStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Header(backgroundColor: ColorsRes.purple1),
              CommonContentLayout(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CommonPageTitle(title: Constants.text.experience),
                    Gaps.vGap100,
                    _buildItemExperience(
                      duration: Constants.text.tdaDuration,
                      jobTitle: Constants.text.tdaJobTitle,
                      company: Constants.text.tdaCompany,
                      works: Constants.text.tdaWorks,
                      onTap: () {
                        Utils.launchUrl(Constants.url.tdaCompany);
                      },
                    ),
                    Gaps.vGap50,
                    _buildHorizontalLine(),
                    Gaps.vGap50,
                    _buildItemExperience(
                      duration: Constants.text.longevityBiotechDuration,
                      jobTitle: Constants.text.longevityBiotechJobTitle,
                      company: Constants.text.longevityBiotechCompany,
                      works: Constants.text.longevityBiotechWorks,
                      onTap: () {
                        Utils.launchUrl(Constants.url.longevityBiotechCompany);
                      },
                    ),
                    Gaps.vGap50,
                    _buildHorizontalLine(),
                    Gaps.vGap50,
                    _buildItemExperience(
                      duration: Constants.text.bkitDuration,
                      jobTitle: Constants.text.bkitJobTitle,
                      company: Constants.text.bkitCompany,
                      works: Constants.text.bkitWorks,
                      onTap: () {
                        Utils.launchUrl(Constants.url.bkitCompany);
                      },
                    ),
                    Gaps.vGap50,
                    _buildHorizontalLine(),
                    Gaps.vGap50,
                    _buildItemExperience(
                      duration: Constants.text.viettelDuration,
                      jobTitle: Constants.text.viettelJobTitle,
                      company: Constants.text.viettelCompany,
                      works: Constants.text.viettelWorks,
                      onTap: () {
                        Utils.launchUrl(Constants.url.viettelCompany);
                      },
                    ),
                    Gaps.vGap100,
                    const Footer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItemExperience({
    required String duration,
    required String jobTitle,
    required String company,
    required String works,
    required VoidCallback onTap,
  }) {
    return LayoutBuilder(builder: (_, constraints) {
      final isDesktop = constraints.maxWidth > Constants.common.maxWidthTablet;

      final durationWidget = Text(
        duration,
        style: CommonTextStyles.title.copyWith(
          color: ColorsRes.textGray,
          fontSize: 18,
          height: 1.32,
        ),
      );
      final workInformationWidget = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            company,
            style: CommonTextStyles.mediumBold,
          ),
          Gaps.vGap5,
          Text(
            jobTitle,
            style: CommonTextStyles.medium.copyWith(
              color: ColorsRes.textGray,
            ),
          ),
          Gaps.vGap20,
          Text(
            works,
            style: CommonTextStyles.normal.copyWith(
              color: ColorsRes.textGray,
              height: 2,
            ),
          ),
        ],
      );

      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isDesktop) ...[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                durationWidget,
                Gaps.hGap30,
                Expanded(
                  child: workInformationWidget,
                ),
              ],
            ),
          ] else ...[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                durationWidget,
                Gaps.vGap20,
                workInformationWidget,
              ],
            ),
          ],
          Gaps.vGap20,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: onTap,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: const CommonAssetImage(
                  image: Assets.icExternalLink,
                  width: 20,
                  height: 20,
                ),
              ),
            ],
          )
        ],
      );
    });
  }

  Widget _buildHorizontalLine() {
    return LayoutBuilder(builder: (_, constraints) {
      final isMobile = constraints.maxWidth <= Constants.common.maxWidthMobile;
      return SizedBox(
        width: isMobile ? 200 : 300,
        height: 1.5,
        child: const DecoratedBox(
          decoration: BoxDecoration(color: Colors.white),
        ),
      );
    });
  }
}
