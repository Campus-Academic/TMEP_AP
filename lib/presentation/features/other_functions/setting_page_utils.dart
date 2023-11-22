import 'package:flutter/material.dart';

Widget buildTextRow({
  IconData? icon,
  String? imageUrl,
  String miniText = "",
  required String iconText,
  String babyText = "",
  Color iconColor = const Color(0XFF456FE8),
  Color textColor = const Color(0XFF456FE8),
  Color bodyColor = const Color(0xFF989898),
  Color miniColor = const Color(0xFF989898),
  double textSize = 20.0,
  double miniSize = 16.0,
  double iconSize = 24.0,
  String fontFamily = 'IBM Plex Mono',
  FontWeight fontWeight = FontWeight.w400,
  double letterSpacing = -0.32,
  bool showButtonIcon = false,
  bool showminitext = false,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0),
    child: Row(
      children: [
        if (icon != null) // 如果有提供 icon，就顯示 Icon widget
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Icon(
              icon,
              color: iconColor,
              size: iconSize,
            ),
          ),
        if (imageUrl != null) // 如果有提供 imageUrl，就顯示 ClipOval 包裹的 Image widget
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: ClipOval(
              child: Image.network(
                imageUrl,
                width: 40.0,
                height: 40.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        if (showminitext == false)
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              iconText,
              style: TextStyle(
                fontSize: textSize,
                color: textColor,
                fontFamily: fontFamily,
                fontWeight: fontWeight,
                letterSpacing: letterSpacing,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        if (showminitext == true)
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: showminitext == false
                ? Container()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        iconText,
                        style: TextStyle(
                          fontSize: textSize,
                          color: textColor,
                          fontFamily: fontFamily,
                          fontWeight: fontWeight,
                          letterSpacing: letterSpacing,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        miniText,
                        style: TextStyle(
                          fontSize: miniSize,
                          color: miniColor,
                          fontFamily: fontFamily,
                          fontWeight: fontWeight,
                          letterSpacing: letterSpacing,
                        ),
                      ),
                    ],
                  ),
          ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Visibility(
              visible: showButtonIcon,
              replacement: Text(
                babyText,
                style: TextStyle(
                  fontSize: textSize,
                  color: bodyColor,
                  fontFamily: fontFamily,
                  fontWeight: fontWeight,
                  letterSpacing: letterSpacing,
                ),
                textAlign: TextAlign.right,
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    print("test");
                  },
                  child: Icon(
                    Icons.chevron_right,
                    color: iconColor,
                    size: 24.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
