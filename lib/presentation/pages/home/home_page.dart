// flutter core
import 'package:flutter/material.dart';
import 'package:app_template_v0/presentation/router/index.dart';
// widgets
import 'package:app_template_v0/presentation/widgets/index.dart';
import 'package:auto_route/auto_route.dart';
// app_localizations
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// Copyright 2023 The Flutter Authors. All rights reserved.
// Author: 賴泓瑋

/// Main screen, displaying campus event information.

///
/// Introduction:
///
///  * Routing
///  * Main screen cards
///
@RoutePage()
class HomePage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const HomePage({Key? key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppHeader(
              headerTitle: AppLocalizations.of(context)!.homePage,
              onPressed: () {},
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  '这是首页的内容',
                  style: TextStyle(fontSize: 24.0),
                ),
                ElevatedButton(
                  onPressed: () {
                    // TODO:注意方法 需要用autorouter
                    // context.router.push(HomeNestRoute())
                  },
                  child: const Text('进入其他页面'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
