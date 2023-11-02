import 'package:app_template_v0/config/index.dart';
import 'package:app_template_v0/presentation/core/gen/assets.gen.dart';
import 'package:app_template_v0/presentation/core/style/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
// app_localizations
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

///首頁校車的banner小元件
class HomeBanner extends StatelessWidget {
  // TODO: text GO!要改成svg?
  // ignore: use_key_in_widget_constructors
  const HomeBanner({Key? key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 355,
      height: 142,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kMedRadius), // 设置卡片的圆角
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(kMedRadius), // 与卡片相同的圆角
          child: Stack(
            children: [
              Positioned(
                left: 0,
                bottom: 0,
                child: Assets.images.background.homeBackground.svg(
                  width: 359,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Positioned(
                          top: 25,
                          left: 18,
                          child: ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return const LinearGradient(
                                colors: [
                                  ColorStyle.gradientStart,
                                  ColorStyle.gradientEnd,
                                ],
                                stops: [0.0, 1.0],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ).createShader(bounds);
                            },
                            child: Text(
                              AppLocalizations.of(context)!.bus,
                              style: const TextStyle(
                                  fontSize: kFontSizeH2,
                                  fontWeight: kFontWeightNormal),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 80.99,
                          left: 50,
                          child: Transform.rotate(
                            angle: -0.2,
                            child: const Text(
                              "Go!",
                              style: TextStyle(
                                fontSize: 35,
                                fontFamily: AutofillHints.birthdayDay,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Transform.scale(
                      scale: 1.4,
                      child: Assets.images.background.busBannerCover.image(),
                    ),
                  ),
                ],
              ),
              // 其他部件
            ],
          ),
        ),
      ),
    );
  }
}
