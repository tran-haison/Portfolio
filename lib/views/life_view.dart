import 'package:flutter/material.dart';
import 'package:portfolio/common/base_state_mixin.dart';
import 'package:portfolio/widgets/common_content_layout.dart';

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
                    _buildSectionTitle(Constants.text.myInterests),
                    Gaps.vGap50,
                    _buildSectionInterest(),
                    Gaps.vGap100,
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
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: CommonTextStyles.title,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildSectionInterest() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Wrap(
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
      ),
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
}
