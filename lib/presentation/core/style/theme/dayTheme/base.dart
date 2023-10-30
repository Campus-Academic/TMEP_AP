import 'package:app_template_v0/presentation/core/style/index.dart';
import 'package:flutter/material.dart';

final ThemeData dayTheme = ThemeData(
  primarySwatch: Colors.blue, // Set the primary color to blue
  hintColor: Colors.white, // 设置强调颜色为绿色
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.blue, // Set primary color to blue
  ).copyWith(
    background: const Color.fromARGB(
        255, 42, 62, 188), // Set the background color to green
  ),

  // text
  textTheme: const TextTheme(
    // 在这里设置文本样式变种
    bodyLarge: TextStyle(
      fontSize: kFontSizeB1,
      color: Colors.white, // 设置字体颜色为白色
    ),
  ),
);
