import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/common/base_state_mixin.dart';
import 'package:portfolio/res/assets.dart';
import 'package:portfolio/router/routers.dart';
import 'package:portfolio/widgets/common_button.dart';
import 'package:portfolio/widgets/common_images.dart';
import 'package:portfolio/widgets/common_item_tech_stack.dart';
import 'package:portfolio/widgets/common_section_title.dart';
import 'package:portfolio/widgets/footer.dart';

import '../res/colors.dart';
import '../utils/constants.dart';
import '../widgets/common_content_layout.dart';
import '../widgets/common_gaps.dart';
import '../widgets/common_text_field.dart';
import '../widgets/common_text_styles.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with BaseStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: CommonContentLayout(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  _buildIntro(),
                  Gaps.vGap100,
                  _buildContent(),
                  Gaps.vGap100,
                  _buildContact(),
                  Gaps.vGap100,
                  const Footer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIntro() {
    return Wrap(
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 50,
      runSpacing: 50,
      children: <Widget>[
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const CommonAssetImage(
              image: Assets.imgSmile,
              width: 100,
              height: 100,
            ),
            Gaps.vGap30,
            Text(
              Constants.text.hi,
              style: CommonTextStyles.highlight,
            ),
            Text(
              Constants.text.haiSonTran1,
              style: CommonTextStyles.highlight,
            ),
            Gaps.vGap30,
            Text(
              Constants.text.positionTitle,
              style: CommonTextStyles.medium,
            ),
            Gaps.vGap30,
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CommonItemTechStack(
                  image: Assets.imgAndroid,
                ),
                Gaps.hGap20,
                CommonItemTechStack(
                  image: Assets.imgIos,
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

  Widget _buildContent() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CommonSectionTitle(title: Constants.text.getToKnowMe),
        Gaps.vGap50,
        _buildContentRow(
          firstWidgetFlex: 2,
          secondWidgetFlex: 3,
          firstWidget: _buildItemContent(
            backgroundColor: ColorsRes.green3,
            iconData: Icons.info_outline,
            text: Constants.text.about,
            onTap: () {
              context.go(Routers.about);
            },
          ),
          secondWidget: _buildItemContent(
            backgroundColor: ColorsRes.purple1,
            iconData: Icons.keyboard_command_key,
            text: Constants.text.experience,
            onTap: () {},
          ),
        ),
        Gaps.vGap50,
        _buildContentRow(
          firstWidgetFlex: 3,
          secondWidgetFlex: 2,
          firstWidget: _buildItemContent(
            backgroundColor: ColorsRes.brown2,
            iconData: Icons.build_circle_outlined,
            text: Constants.text.projects,
            onTap: () {},
          ),
          secondWidget: _buildItemContent(
            backgroundColor: ColorsRes.blue1,
            iconData: Icons.ac_unit,
            text: Constants.text.contact,
            onTap: () {},
          ),
        ),
      ],
    );
  }

  Widget _buildContentRow({
    required Widget firstWidget,
    required Widget secondWidget,
    required int firstWidgetFlex,
    required int secondWidgetFlex,
  }) {
    return LayoutBuilder(
      builder: (_, constraints) {
        final isDesktop =
            constraints.maxWidth > Constants.common.maxWidthTablet;

        if (isDesktop) {
          return Row(
            children: [
              Expanded(
                flex: firstWidgetFlex,
                child: firstWidget,
              ),
              Gaps.hGap50,
              Expanded(
                flex: secondWidgetFlex,
                child: secondWidget,
              ),
            ],
          );
        } else {
          return Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 0,
            runSpacing: 50,
            children: [
              SizedBox(
                width: double.infinity,
                child: firstWidget,
              ),
              SizedBox(
                width: double.infinity,
                child: secondWidget,
              ),
            ],
          );
        }
      },
    );
  }

  Widget _buildContact() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CommonSectionTitle(title: Constants.text.howToReachMe),
        Gaps.vGap50,
        LayoutBuilder(
          builder: (_, constraints) {
            final isMobile =
                constraints.maxWidth < Constants.common.maxWidthMobile;
            if (isMobile) {
              return Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 0,
                runSpacing: 30,
                children: [
                  CommonTextField(
                    hintText: Constants.text.name,
                  ),
                  CommonTextField(
                    hintText: Constants.text.email,
                  ),
                ],
              );
            } else {
              return Row(
                children: [
                  Expanded(
                    child: CommonTextField(
                      hintText: Constants.text.name,
                    ),
                  ),
                  Gaps.hGap30,
                  Expanded(
                    child: CommonTextField(
                      hintText: Constants.text.email,
                    ),
                  ),
                ],
              );
            }
          },
        ),
        Gaps.vGap30,
        CommonTextField(
          hintText: Constants.text.subject,
        ),
        Gaps.vGap30,
        CommonTextField(
          hintText: Constants.text.message,
          height: 300,
          expands: true,
        ),
        Gaps.vGap30,
        SizedBox(
          width: double.maxFinite,
          child: CommonButton(
            onPressed: () {},
            title: Constants.text.send,
            textStyle: CommonTextStyles.medium,
            padding: const EdgeInsets.all(30),
            backIcon: const Icon(
              Icons.send_rounded,
              color: ColorsRes.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildItemContent({
    required Color backgroundColor,
    required IconData iconData,
    required String text,
    required VoidCallback onTap,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: backgroundColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Icon(
                iconData,
                color: Colors.white,
              ),
            ),
            Gaps.vGap20,
            Center(
              child: Text(
                text,
                style: CommonTextStyles.headerBold,
                textAlign: TextAlign.center,
              ),
            ),
            Gaps.vGap20,
            const Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Icon(
                  Icons.double_arrow,
                  color: ColorsRes.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
