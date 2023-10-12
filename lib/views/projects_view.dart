import 'package:flutter/material.dart';
import 'package:portfolio/common/base_state_mixin.dart';
import 'package:portfolio/res/colors.dart';
import 'package:portfolio/widgets/app_store_button.dart';
import 'package:portfolio/widgets/common_content_layout.dart';
import 'package:portfolio/widgets/common_images.dart';
import 'package:portfolio/widgets/common_page_title.dart';
import 'package:portfolio/widgets/common_text_styles.dart';
import 'package:portfolio/widgets/play_store_button.dart';

import '../utils/constants.dart';
import '../widgets/common_gaps.dart';
import '../widgets/footer.dart';
import '../widgets/header.dart';

class ProjectsView extends StatefulWidget {
  const ProjectsView({super.key});

  @override
  State<ProjectsView> createState() => _ProjectsViewState();
}

class _ProjectsViewState extends State<ProjectsView> with BaseStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Header(backgroundColor: ColorsRes.brown2),
              CommonContentLayout(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CommonPageTitle(title: Constants.text.projects),
                    Gaps.vGap100,
                    _buildItemProject(
                      number: Constants.text.number01,
                      name: Constants.text.hrsName,
                      category: Constants.text.hrsCategory,
                      description: Constants.text.hrsDescription,
                      features: Constants.text.hrsFeatures,
                      playStoreUrl: Constants.url.hrsPlayStore,
                      appStoreUrl: Constants.url.hrsAppStore,
                      images: Constants.common.imagesProjectHrs,
                    ),
                    Gaps.vGap100,
                    _buildItemProject(
                      number: Constants.text.number02,
                      name: Constants.text.mathemaName,
                      category: Constants.text.mathemaCategory,
                      description: Constants.text.mathemaDescription,
                      features: Constants.text.mathemaFeatures,
                      playStoreUrl: Constants.url.mathemaPlayStore,
                      appStoreUrl: Constants.url.mathemaAppStore,
                      images: Constants.common.imagesProjectMathema,
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

  Widget _buildItemProject({
    required String number,
    required String name,
    required String category,
    required String description,
    required String features,
    required String playStoreUrl,
    required String appStoreUrl,
    required List<String> images,
  }) {
    final imageWidgets = images.map((image) {
      return ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 250,
        ),
        child: AspectRatio(
          aspectRatio: Constants.common.screenRatioFullHdPortrait,
          child: CommonAssetImage(
            image: image,
            radius: 20,
          ),
        ),
      );
    }).toList();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorsRes.green3.withOpacity(0.2),
              ),
              padding: const EdgeInsets.all(15),
              child: Text(
                number,
                style: CommonTextStyles.highlight.copyWith(
                  fontSize: 30,
                ),
              ),
            ),
            Gaps.hGap30,
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    name,
                    style: CommonTextStyles.headerBold,
                  ),
                  Text(
                    category,
                    style: CommonTextStyles.medium.copyWith(
                      color: ColorsRes.textGray,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Gaps.vGap50,
        Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                Constants.text.about,
                style: CommonTextStyles.mediumBold,
              ),
              Gaps.vGap10,
              Text(
                description,
                style: CommonTextStyles.normal.copyWith(
                  color: ColorsRes.textGray,
                  height: 2,
                ),
              ),
              Gaps.vGap30,
              Text(
                Constants.text.features,
                style: CommonTextStyles.mediumBold,
              ),
              Gaps.vGap10,
              Text(
                features,
                style: CommonTextStyles.normal.copyWith(
                  color: ColorsRes.textGray,
                  height: 2,
                ),
              ),
            ],
          ),
        ),
        Gaps.vGap50,
        Wrap(
          spacing: 50,
          runSpacing: 50,
          children: imageWidgets,
        ),
        Gaps.vGap50,
        Wrap(
          spacing: 20,
          runSpacing: 20,
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            PlayStoreButton(url: playStoreUrl),
            AppStoreButton(url: appStoreUrl),
          ],
        ),
      ],
    );
  }
}
