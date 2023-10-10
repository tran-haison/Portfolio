import 'package:auto_size_text/auto_size_text.dart';
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
    return AutoSizeText(
      title,
      style: CommonTextStyles.highlight,
      maxLines: 1,
      textAlign: TextAlign.center,
    );
  }
}
