import 'package:flutter/material.dart';

import 'setting_page_utils.dart';

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
              side: BorderSide(color: Colors.grey, width: 3.0),
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
                      textColor: Color(0xFF19B0EC),
                      textSize: 18.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 2.0,
                        color: Color(0xFFE5E5E5),
                        margin: EdgeInsets.symmetric(vertical: 5.0),
                      ),
                    ),
                    buildTextRow(
                      icon: Icons.badge,
                      iconText: '姓名',
                      babyText: '蔡尚儒',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 2.0,
                        color: Color(0xFFE5E5E5),
                        margin: EdgeInsets.symmetric(vertical: 5.0),
                      ),
                    ),
                    buildTextRow(
                      icon: Icons.school,
                      iconText: '學號',
                      babyText: 'C111151112',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 2.0,
                        color: Color(0xFFE5E5E5),
                        margin: EdgeInsets.symmetric(vertical: 5.0),
                      ),
                    ),
                    buildTextRow(
                      icon: Icons.local_library,
                      iconText: '班級',
                      babyText: '四資工二甲',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 2.0,
                        color: Color(0xFFE5E5E5),
                        margin: EdgeInsets.symmetric(vertical: 5.0),
                      ),
                    ),
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
