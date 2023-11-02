// core
import 'package:app_template_v0/presentation/features/home/features/new_notification/widgets/home_new_notification_carousel_btn.dart';
import 'package:flutter/material.dart';
// config
import 'package:app_template_v0/config/index.dart';
// carousel_slider
import 'package:carousel_slider/carousel_slider.dart';
// app_localizations
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// style
import 'package:app_template_v0/presentation/core/style/index.dart';
// gen
import 'package:app_template_v0/presentation/core/gen/assets.gen.dart';

///最新活動輪番
class HomeNewNotificationCarousel extends StatefulWidget {
  const HomeNewNotificationCarousel({Key? key});

  @override
  State<HomeNewNotificationCarousel> createState() =>
      _HomeNewNotificationCarouselState();
}

class _HomeNewNotificationCarouselState
    extends State<HomeNewNotificationCarousel> {
  bool isButtonClicked = false;

  void handleButtonClicked(bool isClicked) {
    setState(() {
      isButtonClicked = isClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: HomeNewNotificationCarouselBtn(
                  clubCount: '$i',
                  clubTitle: "Title $i",
                  isClick: isButtonClicked,
                  onButtonPressed: handleButtonClicked,
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
