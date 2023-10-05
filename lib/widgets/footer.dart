import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'common_text_styles.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Constants.text.copyRight,
          style: CommonTextStyles.medium,
        ),
      ],
    );
  }
}
