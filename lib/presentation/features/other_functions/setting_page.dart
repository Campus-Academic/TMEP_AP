import 'package:flutter/material.dart';

import 'setting_page_notify.dart';
import 'setting_page_other.dart';
import 'setting_page_person.dart';
import 'setting_page_system.dart';

class SettingPage extends StatelessWidget {
  final int page; // 定義一個變數

  const SettingPage({Key? key, required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (page) {
      case 1:
        return PersonLayout();
      case 2:
        return SystemLayout();
      case 3:
        return NotifyLayout();
      case 4:
        return OtherLayout();
      default:
        return Container();
    }
  }
}
