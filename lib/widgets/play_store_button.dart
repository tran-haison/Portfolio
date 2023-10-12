import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

import '../res/assets.dart';
import '../res/colors.dart';
import '../utils/constants.dart';
import 'common_gaps.dart';
import 'common_images.dart';
import 'common_text_styles.dart';

class PlayStoreButton extends StatelessWidget {
  const PlayStoreButton({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Utils.launchUrl(url),
      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: BoxDecoration(
          color: ColorsRes.black,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: ColorsRes.white,
            width: 1,
          ),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CommonAssetImage(
              image: Assets.imgPlayStore,
              width: 40,
              height: 40,
            ),
            Gaps.hGap20,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  Constants.text.getItOn,
                  style: CommonTextStyles.small.copyWith(
                    color: ColorsRes.textGray,
                  ),
                ),
                Text(
                  Constants.text.googlePlay,
                  style: CommonTextStyles.header,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
