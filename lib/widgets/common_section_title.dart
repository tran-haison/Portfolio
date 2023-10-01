import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'common_gaps.dart';
import 'common_text_styles.dart';

class CommonSectionTitle extends StatelessWidget {
  const CommonSectionTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        final isMobile = constraints.maxWidth < Constants.common.maxWidthMobile;
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (!isMobile) ...[
              const Expanded(child: Gaps.hLine),
              Gaps.hGap50,
            ],
            Expanded(
              child: Text(
                title,
                style: CommonTextStyles.title,
                textAlign: TextAlign.center,
              ),
            ),
            if (!isMobile) ...[
              Gaps.hGap50,
              const Expanded(child: Gaps.hLine),
            ],
          ],
        );
      },
    );
  }
}
