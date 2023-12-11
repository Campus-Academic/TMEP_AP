// flutter core
import 'package:app_template_v0/presentation/features/home/features/index.dart';
import 'package:app_template_v0/presentation/features/home/widgets/index.dart';
import 'package:app_template_v0/presentation/widgets/orther/wave_clip.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
// app_localizations
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'features/new_notification/index.dart';

/// Main screen, displaying campus event information.

///
/// Introduction:
///
///  * header
///  * bus baner
///
@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            ClipPath(
              clipper: WaveClip(),
              child: Container(
                  height: 120.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      colors: [
                        Color(0xff19B0EC),
                        Color(0xff456FE8),
                      ],
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 35,
                        left: 20,
                        child: Text(AppLocalizations.of(context)!.homePage),
                      ),
                    ],
                  )),
            ),
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 120.0,
                    ),
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
      ),
    );
  }
}

// TODO:注意方法 需要用autorouter
// context.router.push(HomeNestRoute())
