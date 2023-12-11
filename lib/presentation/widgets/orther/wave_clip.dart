import 'dart:ui';

import 'package:flutter/material.dart';

class WaveClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8664962, size.height * 0.8567306);
    path_0.cubicTo(
        size.width * 0.9650844,
        size.height * 0.8338858,
        size.width * 0.9965780,
        size.height * 0.7606758,
        size.width,
        size.height * 0.7269224);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(0, 0);
    path_0.lineTo(0, size.height);
    path_0.cubicTo(
        size.width * 0.1129652,
        size.height * 0.5846164,
        size.width * 0.2710997,
        size.height * 0.7525251,
        size.width * 0.5051151,
        size.height * 0.8131324);
    path_0.cubicTo(
        size.width * 0.7391304,
        size.height * 0.8737352,
        size.width * 0.8502353,
        size.height * 0.8627900,
        size.width * 0.8664962,
        size.height * 0.8567306);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
