import 'package:flutter/material.dart';

import 'common_text_styles.dart';

class CommonPageTitle extends StatelessWidget {
  const CommonPageTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: CommonTextStyles.highlight,
    );
  }
}
