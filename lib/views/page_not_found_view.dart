import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/common/base_state_mixin.dart';
import 'package:portfolio/res/colors.dart';
import 'package:portfolio/router/routers.dart';
import 'package:portfolio/widgets/common_button.dart';
import 'package:portfolio/widgets/common_content_layout.dart';
import 'package:portfolio/widgets/common_text_styles.dart';

import '../res/assets.dart';
import '../utils/constants.dart';
import '../widgets/common_gaps.dart';
import '../widgets/common_images.dart';
import '../widgets/common_page_title.dart';

class PageNotFoundView extends StatefulWidget {
  const PageNotFoundView({
    Key? key,
  }) : super(key: key);

  @override
  State<PageNotFoundView> createState() => _PageNotFoundViewState();
}

class _PageNotFoundViewState extends State<PageNotFoundView>
    with BaseStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: CommonContentLayout(
            child: Column(
              children: [
                CommonPageTitle(title: Constants.text.pageNotFound),
                Gaps.vGap20,
                AutoSizeText(
                  Constants.text.pageDoesNotExist,
                  style: CommonTextStyles.header.copyWith(
                    color: ColorsRes.textGray,
                  ),
                  maxLines: 1,
                ),
                Gaps.vGap30,
                CommonButton(
                  title: Constants.text.returnHome,
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 30,
                  ),
                  leadingIcon: const CommonAssetImage(
                    image: Assets.icHome,
                    width: 18,
                    height: 18,
                  ),
                  onPressed: () {
                    context.go(Routers.home);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
