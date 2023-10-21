import 'package:flutter/material.dart';

class BaseIcon {}

class HomePageIcon extends BaseIcon {}

class AppLayoutIcon extends BaseIcon {
  final Icon homeIcon;
  final Icon funcIcon;
  final Icon classIcon;

  AppLayoutIcon()
      : homeIcon = const Icon(Icons.home),
        classIcon = const Icon(Icons.class_),
        funcIcon = const Icon(Icons.functions_rounded);

  // 你可以定义其他类成员和方法
}
