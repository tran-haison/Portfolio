import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../res/colors.dart';
import '../res/dimens.dart';

class CommonTextStyles {
  const CommonTextStyles._();

  static final primary = GoogleFonts.montserrat(
    color: ColorsRes.primary,
    fontSize: DimensRes.sp14,
    fontWeight: FontWeight.w500,
  );

  static final large = GoogleFonts.montserrat(
    color: ColorsRes.white,
    fontSize: DimensRes.sp24,
    fontWeight: FontWeight.w500,
  );

  static final largeBold = GoogleFonts.montserrat(
    color: ColorsRes.white,
    fontSize: DimensRes.sp24,
    fontWeight: FontWeight.w700,
  );

  static final header = GoogleFonts.montserrat(
    color: ColorsRes.white,
    fontSize: DimensRes.sp20,
    fontWeight: FontWeight.w500,
  );

  static final headerBold = GoogleFonts.montserrat(
    color: ColorsRes.white,
    fontSize: DimensRes.sp20,
    fontWeight: FontWeight.w700,
  );

  static final medium = GoogleFonts.montserrat(
    color: ColorsRes.white,
    fontSize: DimensRes.sp16,
    fontWeight: FontWeight.w500,
  );

  static final mediumBold = GoogleFonts.montserrat(
    color: ColorsRes.white,
    fontSize: DimensRes.sp16,
    fontWeight: FontWeight.w700,
  );

  static final normal = GoogleFonts.montserrat(
    color: ColorsRes.white,
    fontSize: DimensRes.sp14,
    fontWeight: FontWeight.w500,
  );

  static final small = GoogleFonts.montserrat(
    color: ColorsRes.white,
    fontSize: DimensRes.sp12,
    fontWeight: FontWeight.w500,
  );

  static final input = GoogleFonts.montserrat(
    color: ColorsRes.inputTextField,
    fontSize: DimensRes.sp16,
    fontWeight: FontWeight.w500,
  );

  static final whiteMedium = GoogleFonts.montserrat(
    color: ColorsRes.white,
    fontSize: DimensRes.sp16,
    fontWeight: FontWeight.w500,
  );

  static final grayMedium = GoogleFonts.montserrat(
    color: ColorsRes.darkGray1,
    fontSize: DimensRes.sp16,
    fontWeight: FontWeight.w500,
  );

  static final highlight = GoogleFonts.poppins(
    color: ColorsRes.white,
    fontSize: DimensRes.sp60,
    fontWeight: FontWeight.w700,
    height: 1,
  );

  static final sectionTitle = GoogleFonts.josefinSans(
    color: ColorsRes.white,
    fontSize: DimensRes.sp30,
    fontWeight: FontWeight.w700,
    height: 1,
  );
}
