import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/common_button.dart';
import 'package:portfolio/presentation/widgets/common_content_layout.dart';
import 'package:portfolio/presentation/widgets/common_navigation_bar.dart';
import 'package:portfolio/presentation/widgets/common_text_styles.dart';

import '../../res/colors.dart';
import '../../widgets/common_gaps.dart';

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
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHero() {
    return CommonContentLayout(
      child: Row(
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Hi!\nI\'m Hai Son Tran.',
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
        ],
      ),
    );
  }
}
