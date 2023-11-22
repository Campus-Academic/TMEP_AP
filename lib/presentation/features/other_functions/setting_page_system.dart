import 'package:flutter/material.dart';

import 'setting_page_utils.dart';

Widget SystemLayout() {
  return SizedBox(
    width: 355,
    height: 250,
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
                      iconText: '系統設定',
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
                      iconText: '語言',
                      miniText: '系統語言',
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
                      iconText: '主題',
                      miniText: '系統主題',
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
                      iconText: '顯示大頭貼',
                      miniText: 'tab bar是否顯示頭貼',
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
