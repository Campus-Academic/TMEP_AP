// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: 2.0,
        color: const Color(0xFFE5E5E5),
        margin: const EdgeInsets.symmetric(vertical: 5.0),
      ),
    );
  }
}
