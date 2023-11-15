// flutter core
import 'package:app_template_v0/presentation/features/home/features/index.dart';
import 'package:app_template_v0/presentation/features/home/widgets/index.dart';
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
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200.0,
                    ),
                    HomeBanner(),
                    SizedBox(height: 10),
                    // 通知
                    HomeNewNotification(),
                  ],
                ),
              ),
            ),
            ClipPath(
              clipper: WaveClip(),
              child: Container(
                height: 200.0,
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
                child: Text(AppLocalizations.of(context)!.homePage),
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

class WaveClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8664962, size.height * 0.8567306);
    path_0.cubicTo(
        size.width * 0.9650844,
        size.height * 0.8338858,
        size.width * 0.9965780,
        size.height * 0.7606758,
        size.width,
        size.height * 0.7269224);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(0, 0);
    path_0.lineTo(0, size.height);
    path_0.cubicTo(
        size.width * 0.1129652,
        size.height * 0.5846164,
        size.width * 0.2710997,
        size.height * 0.7525251,
        size.width * 0.5051151,
        size.height * 0.8131324);
    path_0.cubicTo(
        size.width * 0.7391304,
        size.height * 0.8737352,
        size.width * 0.8502353,
        size.height * 0.8627900,
        size.width * 0.8664962,
        size.height * 0.8567306);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
