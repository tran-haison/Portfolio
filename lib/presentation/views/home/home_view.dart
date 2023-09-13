import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/common_content_layout.dart';
import 'package:portfolio/presentation/widgets/common_navigation_bar.dart';

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
              _buildIntroduction(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIntroduction() {
    return const CommonContentLayout(
      child: Row(
        children: [],
      ),
    );
  }
}
