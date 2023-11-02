// flutter core
import 'package:app_template_v0/presentation/features/home/features/index.dart';
import 'package:app_template_v0/presentation/features/home/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:app_template_v0/presentation/router/index.dart';
// widgets
import 'package:app_template_v0/presentation/widgets/index.dart';
import 'package:auto_route/auto_route.dart';
// app_localizations
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'features/new_notification/index.dart';

// Copyright 2023 The Flutter Authors. All rights reserved.
// Author: 賴泓瑋

/// Main screen, displaying campus event information.

///
/// Introduction:
///
///  * header
///  * bus baner
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
          const Positioned(
            top: 129,
            left: 0,
            right: 0,
            bottom: 0,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HomeBanner(),
                  SizedBox(height: 10),
                  // 通知
                  HomeNewNotification(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// TODO:注意方法 需要用autorouter
// context.router.push(HomeNestRoute())
