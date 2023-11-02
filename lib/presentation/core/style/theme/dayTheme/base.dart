import 'package:app_template_v0/presentation/core/style/index.dart';
import 'package:flutter/material.dart';

final ThemeData dayTheme = ThemeData(
    primarySwatch: Colors.blue,
    hintColor: Colors.black,
    // 次要標題
    secondaryHeaderColor: const Color(0xFF3D3D3D),

    //提示內文
    indicatorColor: const Color(0xFF797979),

    // 焦點顏色
    focusColor: const Color(0xFFFFFFFF),
    //
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blue, // Set primary color to blue
    ).copyWith(
      background: const Color.fromARGB(
          255, 42, 62, 188), // Set the background color to green
    ),

    // text
    textTheme: const TextTheme(
      // title
      titleMedium: TextStyle(
          fontSize: kFontSizeB1,
          fontWeight: kFontWeightBold,
          color: Color(0xFF3D3D3D)),

      // 大
      bodyLarge: TextStyle(
        fontSize: kFontSizeB1,
        color: Colors.white,
      ),

      // 中
      bodyMedium: TextStyle(fontSize: kFontSizeB2, color: Colors.white),

      //  小
      bodySmall: TextStyle(fontSize: kFontSizeB3, color: Colors.white),
    ));
