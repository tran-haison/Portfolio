import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/common/base_state_mixin.dart';
import 'package:portfolio/res/assets.dart';
import 'package:portfolio/res/colors.dart';
import 'package:portfolio/router/routers.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/common_content_layout.dart';
import 'package:portfolio/widgets/common_gaps.dart';
import 'package:portfolio/widgets/common_images.dart';
import 'package:portfolio/widgets/common_text_styles.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../widgets/common_item_social.dart';
import '../widgets/common_item_tech_stack.dart';
import '../widgets/footer.dart';

class AboutView extends StatefulWidget {
  const AboutView({super.key});

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView>
    with BaseStateMixin, TickerProviderStateMixin {
  late final _rotationController = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 30),
  );
  late final _rotationAnimation = CurvedAnimation(
    parent: _rotationController,
    curve: Curves.linear,
  );

  @override
  void initState() {
    super.initState();
    _rotationController.repeat();
  }

  @override
  void dispose() {
    _rotationAnimation.dispose();
    _rotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
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
                    _buildSectionBasicInfo(),
                    Gaps.vGap100,
                    _buildSectionDescription(),
                    Gaps.vGap100,
                    _buildSectionTitle(Constants.text.whatIDo),
                    Gaps.vGap100,
                    _buildSectionExperience(),
                    Gaps.vGap100,
                    _buildSectionTitle(Constants.text.whatIUse),
                    Gaps.vGap50,
                    _buildSectionTechnologyUsed(),
                    Gaps.vGap100,
                    _buildSectionTitle(Constants.text.myInterests),
                    Gaps.vGap50,
                    _buildSectionInterest(),
                    Gaps.vGap100,
                    _buildSectionTitle(Constants.text.letConnect),
                    Gaps.vGap50,
                    _buildSectionSocial(),
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

  Widget _buildHeader(Color backgroundColor) {
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
              color: ColorsRes.white,
            ),
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

  Widget _buildSectionDescription() {
    return LayoutBuilder(builder: (_, constraints) {
      final isMobile = constraints.maxWidth <= Constants.common.maxWidthMobile;
      return ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 800,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 40,
          ),
          decoration: BoxDecoration(
            color: ColorsRes.green3.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            Constants.text.longDescription,
            style: isMobile ? CommonTextStyles.normal : CommonTextStyles.medium,
          ),
        ),
      );
    });
  }

  Widget _buildSectionBasicInfo() {
    return LayoutBuilder(builder: (_, constraints) {
      final isDesktop = constraints.maxWidth > Constants.common.maxWidthTablet;

      final children = [
        RotationTransition(
          turns: _rotationAnimation,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(150),
              border: Border.all(
                color: ColorsRes.white,
                width: 2,
              ),
            ),
            child: const CommonAssetImage(
              image: Assets.imgAvatar,
              height: 250,
              width: 250,
              radius: 150,
            ),
          ),
        ),
        if (!isDesktop) Gaps.vGap50,
        Column(
          crossAxisAlignment:
              isDesktop ? CrossAxisAlignment.start : CrossAxisAlignment.center,
          children: [
            Text(
              Constants.text.haiSonTran2,
              style: CommonTextStyles.title,
              textAlign: TextAlign.center,
            ),
            Gaps.vGap20,
            Text(
              Constants.text.positionTitle,
              style: CommonTextStyles.medium.copyWith(
                color: ColorsRes.white,
              ),
              textAlign: TextAlign.center,
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
      ];

      if (isDesktop) {
        return Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 50,
          runSpacing: 50,
          children: children,
        );
      } else {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: children,
        );
      }
    });
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: CommonTextStyles.title,
      textAlign: TextAlign.center,
    );
  }

  Widget _buildSectionExperience() {
    return LayoutBuilder(builder: (_, constraints) {
      final isSmallScreen = constraints.maxWidth <= 600;

      final itemExperience = _buildItemExperience(
        primaryText: Constants.text.numberOfExperience,
        secondaryText: Constants.text.yearsOfExperience,
      );
      final itemProject = _buildItemExperience(
        primaryText: Constants.text.numberOfProjects,
        secondaryText: Constants.text.projectsDone,
      );
      final itemPlatform = _buildItemExperience(
        primaryText: Constants.text.numberOfPlatforms,
        secondaryText: Constants.text.platformsUsed,
      );

      if (isSmallScreen) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            itemExperience,
            Gaps.vGap100,
            itemProject,
            Gaps.vGap100,
            itemPlatform,
          ],
        );
      } else {
        return Row(
          children: [
            Expanded(child: itemExperience),
            Expanded(child: itemProject),
            Expanded(child: itemPlatform),
          ],
        );
      }
    });
  }

  Widget _buildItemExperience({
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

  Widget _buildSectionTechnologyUsed() {
    return LayoutBuilder(builder: (_, constraints) {
      final isLargeScreen = constraints.maxWidth > 1000;

      final itemOperatingSystem = _buildItemTechnologyUsed(
        number: Constants.text.number01,
        title: Constants.text.operatingSystems,
        description: Constants.text.operatingSystemsDescription,
        images: [
          Assets.imgMacOs,
          Assets.imgUbuntu,
          Assets.imgWindows,
        ],
      );
      final itemProgrammingLanguage = _buildItemTechnologyUsed(
        number: Constants.text.number02,
        title: Constants.text.programmingLanguages,
        description: Constants.text.programmingLanguagesDescription,
        images: [
          Assets.imgJava,
          Assets.imgKotlin,
          Assets.imgSwift,
          Assets.imgDart,
          Assets.imgCPlus,
          Assets.imgPython,
        ],
      );
      final itemFramework = _buildItemTechnologyUsed(
        number: Constants.text.number03,
        title: Constants.text.frameworks,
        description: Constants.text.frameworksDescription,
        images: [
          Assets.imgFlutter,
          Assets.imgDjango,
        ],
      );
      final itemTool = _buildItemTechnologyUsed(
        number: Constants.text.number04,
        title: Constants.text.tools,
        description: Constants.text.toolsDescription,
        images: [
          Assets.imgAws,
          Assets.imgFirebase,
          Assets.imgFastlane,
          Assets.imgGit,
          Assets.imgMySql,
          Assets.imgPostgresql,
          Assets.imgAuth0,
        ],
      );

      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isLargeScreen) ...[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: itemOperatingSystem),
                Gaps.hGap50,
                Expanded(child: itemProgrammingLanguage),
              ],
            ),
            Gaps.vGap50,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: itemFramework),
                Gaps.hGap50,
                Expanded(child: itemTool),
              ],
            ),
          ] else ...[
            itemOperatingSystem,
            Gaps.vGap50,
            itemProgrammingLanguage,
            Gaps.vGap50,
            itemFramework,
            Gaps.vGap50,
            itemTool,
          ],
        ],
      );
    });
  }

  Widget _buildItemTechnologyUsed({
    required String number,
    required String title,
    required String description,
    required List<String> images,
  }) {
    final imageWidgets = images.map(
      (image) => CommonItemTechStack(
        image: image,
        padding: 10,
        backgroundColor: ColorsRes.green2.withOpacity(0.5),
      ),
    );

    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: ColorsRes.green3.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                number,
                style: CommonTextStyles.highlight.copyWith(fontSize: 40),
              ),
              Gaps.hGap30,
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: CommonTextStyles.title.copyWith(fontSize: 24),
                    ),
                    Gaps.vGap5,
                    Text(
                      description,
                      style: CommonTextStyles.normal.copyWith(
                        color: ColorsRes.textGray,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gaps.vGap30,
          Wrap(
            runSpacing: 10,
            spacing: 10,
            children: [
              ...imageWidgets,
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSectionInterest() {
    return Wrap(
      spacing: 15,
      runSpacing: 15,
      children: [
        _buildItemInterest(
          text: Constants.text.gym,
          icon: Assets.icGym,
        ),
        _buildItemInterest(
          text: Constants.text.soccer,
          icon: Assets.icSoccer,
        ),
        _buildItemInterest(
          text: Constants.text.running,
          icon: Assets.icRunning,
        ),
        _buildItemInterest(
          text: Constants.text.badminton,
          icon: Assets.icBadminton,
        ),
        _buildItemInterest(
          text: Constants.text.games,
          icon: Assets.icGames,
        ),
        _buildItemInterest(
          text: Constants.text.deskSetup,
          icon: Assets.icDeskSetup,
        ),
        _buildItemInterest(
          text: Constants.text.menFashion,
          icon: Assets.icFashion,
        ),
        _buildItemInterest(
          text: Constants.text.sneakers,
          icon: Assets.icSneakers,
        ),
        _buildItemInterest(
          text: Constants.text.music,
          icon: Assets.icMusic,
        ),
        _buildItemInterest(
          text: Constants.text.travelling,
          icon: Assets.icTravelling,
        ),
      ],
    );
  }

  Widget _buildItemInterest({
    required String text,
    required String icon,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: ColorsRes.green3.withOpacity(0.2),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CommonAssetImage(
            image: icon,
            width: 25,
            height: 25,
          ),
          Gaps.hGap10,
          Text(
            text,
            style: CommonTextStyles.normal,
          ),
        ],
      ),
    );
  }

  Widget _buildSectionSocial() {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 15,
      runSpacing: 15,
      children: [
        CommonItemSocial(
          icon: Assets.icLinkedIn,
          onTap: () => _launchUrl(Constants.url.linkedin),
        ),
        CommonItemSocial(
          icon: Assets.icGithub,
          onTap: () => _launchUrl(Constants.url.github),
        ),
        CommonItemSocial(
          icon: Assets.icGmail,
          onTap: () => _launchUrl(Constants.url.gmail),
        ),
        CommonItemSocial(
          icon: Assets.icFacebook,
          onTap: () => _launchUrl(Constants.url.facebook),
        ),
        CommonItemSocial(
          icon: Assets.icInstagram,
          onTap: () => _launchUrl(Constants.url.instagram),
        ),
      ],
    );
  }

  Future<void> _launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    }
  }
}
