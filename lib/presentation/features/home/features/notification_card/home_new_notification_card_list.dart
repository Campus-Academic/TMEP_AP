import 'package:app_template_v0/config/index.dart';
import 'package:app_template_v0/presentation/features/home/features/notification_card/home_new_notification_card.dart';
import 'package:flutter/material.dart';

class HomeNewNotificationCardList extends StatelessWidget {
  const HomeNewNotificationCardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 使用map生成五个HomeNewNotificationCard，每个都带有10像素的垂直内边距
    List<Widget> cardsWithPadding = List.generate(
      10,
      (index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: HomeNewNotificationCard(
          clubCount: 'Club $index',
          clubTitle: 'Title $index',
        ),
      ),
    );

    return Column(
      children: cardsWithPadding,
    );
  }
}
