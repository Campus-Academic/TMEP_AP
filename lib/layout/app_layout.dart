// flutter core
import 'package:flutter/material.dart';
// pages
import 'package:app_template_v0/pages/index.dart';
// localization
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// router
import 'package:get/get.dart';
// widget
import 'package:app_template_v0/layout/nav_bar.dart';
// conf
import 'package:app_template_v0/config/index.dart';
// Copyright 2023 The Flutter Authors. All rights reserved.
// Author: 賴泓瑋 , XXX ................

/// This is the Main Layout

///
/// Introduction:
///
///  * Homer page
///  * Class page
///  * Func page
///

class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AppLayoutState createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  int _currentIndex = SettingsManager.appLayoutCurrentIndex; // 当前选中的底部导航栏项的索引

  // 底部导航栏的页面
  final List<Widget> _pages = [
    const ClassSchedulePage(),
    const HomePage(),
    const SchoolLinksPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('app layout'),
      ),
      body: Stack(
        children: [
          // 显示当前选中的页面
          _pages[_currentIndex],
          // 底部导航栏
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: BottomNavigationBar(
                currentIndex: _currentIndex, // 当前选中的项索引
                onTap: (index) {
                  setState(() {
                    _currentIndex = index; // 切换页面
                  });
                },
                items: bottomNavigationBarItems),
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(AppLocalizations.of(context)!.helloWorld),
    );
  }
}

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('User Profile Page'),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Settings Page'),
    );
  }
}
