import 'package:app_template_v0/config/index.dart';
import 'package:app_template_v0/presentation/features/home/features/index.dart';
import 'package:app_template_v0/presentation/features/home/features/new_notification/widgets/index.dart';
import 'package:flutter/material.dart';

///首頁校車的banner小元件
class HomeNewNotification extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const HomeNewNotification({Key? key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: kSmallPadding, horizontal: kMediumPadding),
      // TODO: 修改 width
      // width: 355,
      child: const Card(
        child: Padding(
          padding: EdgeInsets.all(kSmallPadding),
          child: Column(
            children: [
              HomeNewNotificationHeader(),
              SizedBox(
                height: 10,
              ),
              HomeNewNotificationCarousel(),
              HomeNewNotificationCardList(),
            ],
          ),
        ),
      ),
    );
  }
}
