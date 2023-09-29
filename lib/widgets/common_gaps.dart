import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/colors.dart';

class Gaps {
  const Gaps._();

  /// Blank space between items horizontally
  static const hGap2 = SizedBox(width: 2);
  static const hGap4 = SizedBox(width: 4);
  static const hGap5 = SizedBox(width: 5);
  static const hGap6 = SizedBox(width: 6);
  static const hGap8 = SizedBox(width: 8);
  static const hGap10 = SizedBox(width: 10);
  static const hGap12 = SizedBox(width: 12);
  static const hGap15 = SizedBox(width: 15);
  static const hGap16 = SizedBox(width: 16);
  static const hGap18 = SizedBox(width: 18);
  static const hGap20 = SizedBox(width: 20);
  static const hGap22 = SizedBox(width: 22);
  static const hGap24 = SizedBox(width: 24);
  static const hGap28 = SizedBox(width: 28);
  static const hGap30 = SizedBox(width: 30);
  static const hGap32 = SizedBox(width: 32);
  static const hGap40 = SizedBox(width: 40);
  static const hGap50 = SizedBox(width: 50);
  static const hGap80 = SizedBox(width: 80);

  /// Blank space between items vertically
  static const vGap2 = SizedBox(height: 2);
  static const vGap4 = SizedBox(height: 4);
  static const vGap5 = SizedBox(height: 5);
  static const vGap6 = SizedBox(height: 6);
  static const vGap8 = SizedBox(height: 8);
  static const vGap10 = SizedBox(height: 10);
  static const vGap12 = SizedBox(height: 12);
  static const vGap15 = SizedBox(height: 15);
  static const vGap16 = SizedBox(height: 16);
  static const vGap20 = SizedBox(height: 20);
  static const vGap22 = SizedBox(height: 22);
  static const vGap24 = SizedBox(height: 24);
  static const vGap25 = SizedBox(height: 25);
  static const vGap26 = SizedBox(height: 26);
  static const vGap28 = SizedBox(height: 28);
  static const vGap30 = SizedBox(height: 30);
  static const vGap32 = SizedBox(height: 32);
  static const vGap40 = SizedBox(height: 40);
  static const vGap44 = SizedBox(height: 44);
  static const vGap46 = SizedBox(height: 46);
  static const vGap50 = SizedBox(height: 50);
  static const vGap55 = SizedBox(height: 55);
  static const vGap60 = SizedBox(height: 60);
  static const vGap70 = SizedBox(height: 70);
  static const vGap80 = SizedBox(height: 80);
  static const vGap100 = SizedBox(height: 100);
  static const vGap200 = SizedBox(height: 200);

  /// Horizontal line
  static const hLine = SizedBox(
    height: 1.5,
    width: double.infinity,
    child: DecoratedBox(
      decoration: BoxDecoration(color: ColorsRes.borderGray),
    ),
  );

  /// Vertical line
  static const vLine = SizedBox(
    width: 1.5,
    height: double.infinity,
    child: DecoratedBox(
      decoration: BoxDecoration(color: ColorsRes.borderGray),
    ),
  );

  /// Space between items in row, calculate by percent
  static SizedBox hGapPercent([double percent = 0.1]) =>
      SizedBox(width: ScreenUtil().screenWidth * percent);

  /// Space between items in column, calculate by percent
  static SizedBox vGapPercent([double percent = 0.1]) =>
      SizedBox(height: ScreenUtil().screenHeight * percent);

  static const empty = SizedBox.shrink();
}
