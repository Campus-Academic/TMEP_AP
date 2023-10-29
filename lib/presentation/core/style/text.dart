import 'package:app_template_v0/presentation/core/style/color.dart';
import 'package:flutter/material.dart';

const kTitleFamily = 'Roboto';
const kFontFamily = 'Noto Sans';

// Title
const double kFontSizeH1 = 28.0;
const double kFontSizeH2 = 20.0;
// Body
const double kFontSizeB1 = 15.0; // 大 Body
const double kFontSizeB2 = 12.0; // 內文

// Weight
const FontWeight kFontWeightBold = FontWeight.w700;
const FontWeight kFontWeightSemiBold = FontWeight.w600;
const FontWeight kFontWeightNormal = FontWeight.w500;
const FontWeight kFontWeightLight = FontWeight.w300;

class TextThemeStyle {
  static TextStyle? kTextStyleH1({
    Color? color = ColorStyle.black,
    FontWeight? fontWeight = kFontWeightBold,
    TextDecoration? decoration,
    double? height,
  }) {
    return TextStyle(
      fontFamily: kFontFamily,
      color: color,
      fontSize: kFontSizeH1,
      fontWeight: fontWeight,
      decoration: decoration,
      height: height,
    );
  }

  static TextStyle? kTextStyleH2({
    Color? color = ColorStyle.black,
    FontWeight? fontWeight = kFontWeightBold,
    TextDecoration? decoration,
    double? height,
  }) {
    return TextStyle(
      fontFamily: kFontFamily,
      color: color,
      fontSize: kFontSizeH2,
      fontWeight: fontWeight,
      decoration: decoration,
      height: height,
    );
  }

  static TextStyle? kTextStyleB1({
    Color? color = ColorStyle.black,
    FontWeight? fontWeight = kFontWeightNormal,
    TextDecoration? decoration,
    double? height,
  }) {
    return TextStyle(
      fontFamily: kFontFamily,
      color: color,
      fontSize: kFontSizeB1,
      fontWeight: fontWeight,
      decoration: decoration,
      height: height,
    );
  }

  static TextStyle? kTextStyleB2({
    Color? color = ColorStyle.black,
    FontWeight? fontWeight = kFontWeightNormal,
    TextDecoration? decoration,
    double? height,
  }) {
    return TextStyle(
      fontFamily: kFontFamily,
      color: color,
      fontSize: kFontSizeB2,
      fontWeight: fontWeight,
      decoration: decoration,
      height: height,
    );
  }
}
