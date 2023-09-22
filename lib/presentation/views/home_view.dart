import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/common_button.dart';
import 'package:portfolio/presentation/widgets/common_content_layout.dart';
import 'package:portfolio/presentation/widgets/common_images.dart';
import 'package:portfolio/presentation/widgets/common_navigation_bar.dart';
import 'package:portfolio/presentation/widgets/common_text_styles.dart';

import '../res/assets.dart';
import '../res/colors.dart';
import '../widgets/common_gaps.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CommonNavigationBar(),
              Gaps.vGap30,
              _buildSectionHero(),
              _buildSectionAbout(),
              _buildSectionExperiences(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHero() {
    return CommonContentLayout(
      child: Wrap(
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
              Text(
                'Hai Son Tran.',
                style: CommonTextStyles.highlight,
              ),
              Gaps.vGap15,
              Text(
                'Mobile Engineer / Android / iOS / Flutter',
                style: CommonTextStyles.medium,
              ),
              Gaps.vGap25,
              CommonButton(
                title: 'See my works',
                backgroundColor: ColorsRes.black,
                borderRadius: 50,
                padding: const EdgeInsets.all(20),
                backIcon: const Icon(
                  Icons.arrow_right_alt,
                  color: Colors.white,
                ),
                textStyle: CommonTextStyles.medium.copyWith(
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
          const CommonAssetImage(
            image: Assets.imgDeveloper,
          ),
        ],
      ),
    );
  }

  Widget _buildSectionAbout() {
    return CommonContentLayout(
      backgroundColor: ColorsRes.gray100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            _buildSectionTitle('About'),
            Gaps.vGap20,
            Text(
              'I\'m a Mobile Engineer with years of hands-on experience in designing, developing, and optimizing mobile applications.\n\n'
              'Over the years, I\'ve honed my skills in both iOS and Android app development, leveraging languages such as Swift, Kotlin, and Java. I have a proven track record of collaborating with cross-functional teams to deliver innovative and robust mobile experiences that meet user needs and business objectives.\n\n'
              'Let\'s connect and explore how I can contribute to your mobile development endeavors.',
              style: CommonTextStyles.medium,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionExperiences() {
    return CommonContentLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildSectionTitle('Experiences'),
            Gaps.vGap30,
            GridView.builder(
              shrinkWrap: true,
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 5 / 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              itemBuilder: (_, index) {
                final color = (index == 0 || index == 3)
                    ? Colors.black87
                    : ColorsRes.gray200;
                return _buildItemExperience(
                  backgroundColor: color,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Row(
      children: [
        const Expanded(child: Gaps.hLine),
        Gaps.hGap50,
        Text(
          title,
          style: CommonTextStyles.headerBold,
        ),
        Gaps.hGap50,
        const Expanded(child: Gaps.hLine),
      ],
    );
  }

  Widget _buildItemExperience({
    required Color backgroundColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: ColorsRes.primary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.ac_unit,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
