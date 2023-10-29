import 'package:flutter/material.dart';
// router
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
// conf
import 'package:app_template_v0/config/index.dart';

// Copyright 2023 The Flutter Authors. All rights reserved.
// Author: 賴泓瑋

/// This is a test view for demonstration and testing purposes.
///
/// Introduction:
///
///  * Routing
///  * Main screen cards
///
class BaseTestView extends StatelessWidget {
  const BaseTestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Base Test View'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back to '/'
            Get.offAllNamed(RouterConf.init);
          },
        ),
      ),
      body: const Center(
        child: Text(
          'This is a base test view.',
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
