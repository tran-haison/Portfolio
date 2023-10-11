import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/common/base_state_mixin.dart';
import 'package:portfolio/res/colors.dart';
import 'package:portfolio/widgets/common_content_layout.dart';
import 'package:portfolio/widgets/common_page_title.dart';
import 'package:portfolio/widgets/common_text_styles.dart';

import '../utils/constants.dart';
import '../widgets/common_gaps.dart';
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
                    _buildTextSelfDescription(),
                    Gaps.vGap100,
                    _buildItemProject(
                      number: '01.',
                      name: 'HRS Hisol Worker',
                      domain: 'HR Management',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextSelfDescription() {
    return AutoSizeText(
      Constants.text.projectSelfDescription,
      style: CommonTextStyles.header,
      maxLines: 3,
      textAlign: TextAlign.center,
    );
  }

  Widget _buildItemProject({
    required String number,
    required String name,
    required String domain,
  }) {
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  name,
                  style: CommonTextStyles.headerBold,
                ),
                Text(
                  domain,
                  style: CommonTextStyles.medium.copyWith(
                    color: ColorsRes.textGray,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
