import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/common/base_state_mixin.dart';
import 'package:portfolio/widgets/common_content_layout.dart';
import 'package:portfolio/widgets/footer.dart';

import '../res/assets.dart';
import '../res/colors.dart';
import '../utils/constants.dart';
import '../widgets/common_gaps.dart';
import '../widgets/common_images.dart';
import '../widgets/common_page_title.dart';
import '../widgets/common_text_styles.dart';
import '../widgets/header.dart';

class LifeView extends StatefulWidget {
  const LifeView({super.key});

  @override
  State<LifeView> createState() => _LifeViewState();
}

class _LifeViewState extends State<LifeView> with BaseStateMixin {
  late final Widget image1;
  late final Widget image2;
  late final Widget image3;
  late final Widget image4;
  late final Widget image5;
  late final Widget image6;
  late final Widget image7;
  late final Widget image8;

  @override
  void initState() {
    super.initState();

    image1 = AspectRatio(
      aspectRatio: Constants.common.screenRatio4_3,
      child: const CommonAssetImage(
        image: Assets.imgDeskSetup1,
        radius: 10,
        fit: BoxFit.cover,
      ),
    );
    image2 = AspectRatio(
      aspectRatio: Constants.common.screenRatio4_3,
      child: const CommonAssetImage(
        image: Assets.imgTravelDaNang,
        radius: 10,
        fit: BoxFit.cover,
      ),
    );
    image3 = const CommonAssetImage(
      image: Assets.imgTravelHanoi,
      radius: 10,
      fit: BoxFit.fill,
    );
    image4 = const CommonAssetImage(
      image: Assets.imgTravelHue,
      radius: 10,
      fit: BoxFit.fill,
    );
    image5 = const CommonAssetImage(
      image: Assets.imgTravelHoiAn,
      radius: 10,
      fit: BoxFit.fill,
    );
    image6 = const CommonAssetImage(
      image: Assets.imgTravelHoChiMinh,
      radius: 10,
      fit: BoxFit.fill,
    );
    image7 = const CommonAssetImage(
      image: Assets.imgSportSoccer,
      fit: BoxFit.fill,
      radius: 10,
    );
    image8 = const CommonAssetImage(
      image: Assets.imgTravelQuangBinh,
      fit: BoxFit.fill,
      radius: 10,
    );
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
              const Header(backgroundColor: ColorsRes.blue1),
              CommonContentLayout(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CommonPageTitle(title: Constants.text.life),
                    Gaps.vGap100,
                    _buildSectionTitle(Constants.text.lifeDescription),
                    Gaps.vGap50,
                    _buildSectionInterests(),
                    Gaps.vGap100,
                    _buildSectionHobbies(),
                    Gaps.vGap100,
                    _buildSectionImages(),
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

  Widget _buildSectionTitle(String title) {
    return AutoSizeText(
      title,
      style: CommonTextStyles.title,
      textAlign: TextAlign.center,
      maxLines: 5,
    );
  }

  Widget _buildSectionInterests() {
    return Wrap(
      alignment: WrapAlignment.center,
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
          text: Constants.text.traveling,
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

  Widget _buildSectionHobbies() {
    return LayoutBuilder(builder: (_, constraints) {
      final isDesktop = constraints.maxWidth > Constants.common.maxWidthTablet;

      final hobby1 = _buildItemHobby(
        number: Constants.text.number01,
        title: Constants.text.techStuffs,
        description: Constants.text.techStuffsDescription,
      );
      final hobby2 = _buildItemHobby(
        number: Constants.text.number02,
        title: Constants.text.sportTitle,
        description: Constants.text.sportDescription,
      );
      final hobby3 = _buildItemHobby(
        number: Constants.text.number03,
        title: Constants.text.traveling,
        description: Constants.text.travelDescription,
      );
      final hobby4 = _buildItemHobby(
        number: Constants.text.number04,
        title: Constants.text.menFashion,
        description: Constants.text.menFashionDescription,
      );

      if (isDesktop) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: hobby1,
                ),
                Gaps.hGap50,
                Expanded(
                  child: hobby2,
                ),
              ],
            ),
            Gaps.vGap50,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: hobby3,
                ),
                Gaps.hGap50,
                Expanded(
                  child: hobby4,
                ),
              ],
            ),
          ],
        );
      } else {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            hobby1,
            Gaps.vGap50,
            hobby2,
            Gaps.vGap50,
            hobby3,
            Gaps.vGap50,
            hobby4,
          ],
        );
      }
    });
  }

  Widget _buildItemHobby({
    required String number,
    required String title,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          number,
          style: CommonTextStyles.highlight.copyWith(
            fontSize: 30,
          ),
        ),
        Gaps.vGap20,
        Text(
          title,
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
      ],
    );
  }

  Widget _buildSectionImages() {
    return LayoutBuilder(builder: (_, constraints) {
      final isDesktop = constraints.maxWidth > Constants.common.maxWidthTablet;

      if (isDesktop) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: 400,
                ),
                child: image1,
              ),
            ),
            Gaps.hGap20,
            Expanded(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 400),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxHeight: 180),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          image2,
                          Gaps.hGap20,
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    maxHeight: 80,
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: image3,
                                      ),
                                      Gaps.hGap20,
                                      Expanded(
                                        child: image4,
                                      ),
                                    ],
                                  ),
                                ),
                                Gaps.vGap20,
                                ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    maxHeight: 80,
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: image5,
                                      ),
                                      Gaps.hGap20,
                                      Expanded(
                                        child: image6,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gaps.vGap20,
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxHeight: 200),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          image7,
                          Gaps.hGap20,
                          Expanded(
                            child: image8,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      } else {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            image1,
            Gaps.vGap20,
            image2,
            Gaps.vGap20,
            Row(
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: Constants.common.screenRatio16_9,
                    child: image3,
                  ),
                ),
                Gaps.hGap20,
                Expanded(
                  child: AspectRatio(
                    aspectRatio: Constants.common.screenRatio16_9,
                    child: image4,
                  ),
                ),
              ],
            ),
            Gaps.vGap20,
            Row(
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: Constants.common.screenRatio16_9,
                    child: image5,
                  ),
                ),
                Gaps.hGap20,
                Expanded(
                  child: AspectRatio(
                    aspectRatio: Constants.common.screenRatio16_9,
                    child: image6,
                  ),
                ),
              ],
            ),
            Gaps.vGap20,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: AspectRatio(
                    aspectRatio: Constants.common.screenRatio9_16,
                    child: image7,
                  ),
                ),
                Gaps.hGap20,
                Expanded(
                  flex: 3,
                  child: image8,
                ),
              ],
            ),
          ],
        );
      }
    });
  }
}
