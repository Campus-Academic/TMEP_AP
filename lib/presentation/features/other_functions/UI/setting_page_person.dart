import 'package:flutter/material.dart';

import '../Mini/CustomDivider.dart';
import '../Mini/setting_page_utils.dart';

// ignore: non_constant_identifier_names
Widget PersonLayout() {
  return SizedBox(
    width: 355,
    height: 240,
    child: Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white.withOpacity(0.0),
        ),
        Positioned.fill(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
              side: const BorderSide(color: Colors.grey, width: 3.0),
            ),
            child: Container(
              color: Colors.transparent,
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    buildTextRow(
                      // icon: Icons.person,
                      imageUrl:
                          "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
                      iconText: '個人資訊',
                      textColor: const Color(0xFF19B0EC),
                      textSize: 18.0,
                    ),
                    const CustomDivider(),
                    buildTextRow(
                      icon: Icons.badge,
                      iconText: '姓名',
                      babyText: '蔡尚儒',
                    ),
                    const CustomDivider(),
                    buildTextRow(
                      icon: Icons.school,
                      iconText: '學號',
                      babyText: 'C111151112',
                    ),
                    const CustomDivider(),
                    buildTextRow(
                      icon: Icons.local_library,
                      iconText: '班級',
                      babyText: '四資工二甲',
                    ),
                    const CustomDivider(),
                    buildTextRow(
                      icon: Icons.logout,
                      iconText: '登出',
                      showButtonIcon: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
