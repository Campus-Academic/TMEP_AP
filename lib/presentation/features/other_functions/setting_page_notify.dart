import 'package:flutter/material.dart';

import 'setting_page_utils.dart';

Widget NotifyLayout() {
  return SizedBox(
    width: 355,
    height: 190,
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
                      icon: Icons.settings,
                      iconText: '通知',
                      textColor: Color(0xFF19B0EC),
                      textSize: 18.0,
                      iconSize: 40.0,
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
                      iconText: '上課提醒',
                      miniText: '上課前十分鐘提醒 點即可取消的通知',
                      showButtonIcon: true,
                      showminitext: true,
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
                      iconText: '校車提醒',
                      miniText: '發車前30分鐘提醒',
                      showButtonIcon: true,
                      showminitext: true,
                    )
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
