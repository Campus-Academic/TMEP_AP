import 'package:flutter/material.dart';

// Copyright 2023 The Flutter Authors. All rights reserved.
// Author: 賴泓瑋

/// Main screen, displaying campus event information.

///
/// Introduction:
///
///  * Routing
///  * Main screen cards
///

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '欢迎来到首页！',
              style: TextStyle(fontSize: 24.0),
            ),
            ElevatedButton(
              onPressed: () {
                // 在这里添加导航到其他页面的逻辑
              },
              child: const Text('进入其他页面'),
            ),
          ],
        ),
      ),
    );
  }
}
