import 'package:flutter/material.dart';

import 'setting_page_utils.dart';

// ignore: non_constant_identifier_names
Widget OtherLayout() {
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
              side: const BorderSide(color: Colors.grey, width: 3.0),
            ),
            child: Container(
              color: Colors.transparent,
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    buildTextRow(
                      icon: Icons.settings,
                      iconText: '其他資訊',
                      textColor: const Color(0xFF19B0EC),
                      textSize: 18.0,
                      iconSize: 40.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 2.0,
                        color: const Color(0xFFE5E5E5),
                        margin: const EdgeInsets.symmetric(vertical: 5.0),
                      ),
                    ),
                    buildTextRow(
                      iconText: '關於我們',
                      miniText: '開發工作人員',
                      showButtonIcon: true,
                      showminitext: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 2.0,
                        color: const Color(0xFFE5E5E5),
                        margin: const EdgeInsets.symmetric(vertical: 5.0),
                      ),
                    ),
                    buildTextRow(
                      iconText: '回饋意見',
                      miniText: '私訊粉絲專頁',
                      showButtonIcon: true,
                      showminitext: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 2.0,
                        color: const Color(0xFFE5E5E5),
                        margin: const EdgeInsets.symmetric(vertical: 5.0),
                      ),
                    ),
                    buildTextRow(
                      iconText: 'App版本',
                      miniText: 'v3.10.1',
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
