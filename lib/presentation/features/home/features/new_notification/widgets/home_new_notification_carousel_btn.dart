// core
import 'package:flutter/material.dart';
// config
import 'package:app_template_v0/config/index.dart';
// carousel_slider
import 'package:carousel_slider/carousel_slider.dart';
// app_localizations
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// style
import 'package:app_template_v0/presentation/core/style/index.dart';
// gen
import 'package:app_template_v0/presentation/core/gen/assets.gen.dart';

typedef OnButtonPressed = void Function(bool isClicked);

///最新活動輪番的 BTN

class HomeNewNotificationCarouselBtn extends StatefulWidget {
  final bool isClick;
  final String clubTitle;
  final String clubCount;
  final OnButtonPressed onButtonPressed;

  const HomeNewNotificationCarouselBtn({
    Key? key,
    required this.clubCount,
    required this.clubTitle,
    required this.isClick,
    required this.onButtonPressed,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeNewNotificationCarouselBtnState createState() =>
      _HomeNewNotificationCarouselBtnState();
}

class _HomeNewNotificationCarouselBtnState
    extends State<HomeNewNotificationCarouselBtn> {
  Color buttonColor = Colors.white; // 初始颜色

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor, // 使用变量设置背景颜色
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kMaxRadius), // 调整圆角半径
        ),
      ),
      onPressed: () {
        // 按下按钮时执行的操作
        widget.onButtonPressed(!widget.isClick); // 通知外部按钮已被按下
        if (widget.isClick) {
          setState(() {
            buttonColor = Colors.blue; // 如果按钮已被按下，更改背景颜色为蓝色
          });
        } else {
          setState(() {
            buttonColor = Colors.white; // 如果按钮未被按下，恢复背景颜色
          });
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "(${widget.clubCount})",
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          Text(
            widget.clubTitle,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
