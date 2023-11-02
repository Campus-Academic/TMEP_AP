import 'package:app_template_v0/presentation/core/style/color.dart';
import 'package:flutter/material.dart';

const kTitleFamily = 'Roboto';
const kFontFamily = 'Noto Sans';

const double kFontSizeH1 = 28.0;
// Title
const double kFontSizeH2 = 25.0;
const double kFontSizeH3 = 20.0;
// Body
const double kFontSizeB1 = 40.0; // 大 Body
const double kFontSizeB2 = 30.0; // 大 Body
const double kFontSizeB3 = 25.0; // 內文

// Weight
const FontWeight kFontWeightBold = FontWeight.w600;
const FontWeight kFontWeightSemiBold = FontWeight.w400;
const FontWeight kFontWeightNormal = FontWeight.w400;
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
      fontWeight: kFontWeightNormal,
      decoration: decoration,
      height: height,
    );
  }

  static TextStyle? kTextStyleH3({
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

  static TextStyle? kTextStyleB3({
    Color? color = ColorStyle.black,
    FontWeight? fontWeight = kFontWeightNormal,
    TextDecoration? decoration,
    double? height,
  }) {
    return TextStyle(
      fontFamily: kFontFamily,
      color: color,
      fontSize: kFontSizeB3,
      fontWeight: fontWeight,
      decoration: decoration,
      height: height,
    );
  }
}
