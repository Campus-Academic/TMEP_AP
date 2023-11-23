import 'package:flutter/material.dart';

// 以下是五个测试页面的简单实现
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('首頁'));
  }
}

class AppPage extends StatelessWidget {
  const AppPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('App'));
  }
}

class BusPage extends StatelessWidget {
  const BusPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('校車'));
  }
}

class StudyPage extends StatelessWidget {
  const StudyPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
  color: Colors.red, // 设置外层Container的背景颜色
  child: Center(
    child: Text('學習'),
  ),
);
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
  color: Colors.blue, // 设置外层Container的背景颜色
  child: Center(
    child: Text('設定'),
  ),
);
  }
}

class EmptyPage extends StatelessWidget {
  const EmptyPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(); // 只是返回一个空容器
  }
}