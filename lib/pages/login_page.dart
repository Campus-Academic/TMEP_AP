// core
import 'package:flutter/material.dart';
// bloc
import 'package:app_template_v0/bloc/index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// router
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
// conf
import 'package:app_template_v0/config/index.dart';

// Copyright 2023 The Flutter Authors. All rights reserved.
// Author: 賴泓瑋

/// Main screen, displaying campus event information.

///
/// Introduction:
///
///  * Routing
///  * Main screen cards
///

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '欢迎来到首页！',
              style: TextStyle(fontSize: 24.0),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  labelText: '用户名',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: '密码',
                ),
                obscureText: true, // 隐藏密码
              ),
            ),
            TextButton(
              onPressed: () {
                final username = usernameController.text;
                final password = passwordController.text;
                context
                    .read<AuthBloc>()
                    .updateCredentials(username, password, true);
                Get.offAllNamed(RouterConf.init);
              },
              child: const Text('登录'),
            ),
          ],
        ),
      ),
    );
  }
}
