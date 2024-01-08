import 'package:app_template_v0/presentation/core/gen/assets.gen.dart';
import 'package:app_template_v0/presentation/features/home/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:app_template_v0/presentation/core/gen/assets.gen.dart';

import 'package:flutter/material.dart';

import '../index.dart';

class HomeNewNotificationCard extends StatefulWidget {
  final String clubCount;
  final String clubTitle;

  const HomeNewNotificationCard({
    super.key,
    required this.clubCount,
    required this.clubTitle,
  });

  @override
  _HomeNewNotificationCardState createState() =>
      _HomeNewNotificationCardState();
}

class _HomeNewNotificationCardState extends State<HomeNewNotificationCard> {
  bool isButtonClicked = false;

  void handleButtonClicked() {
    setState(() {
      isButtonClicked = !isButtonClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0), // 添加10像素的内边距
          child: Assets.mock.test1.image(
            width: 97.93498229980469,
            height: 94.58104705810547,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 180.0,
              child: Text(
                "高科大Ｘ高師大 世界計畫音遊聯合比賽",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).secondaryHeaderColor),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
            Row(
              children: [
                NotificationCardTag(
                  tagName: '撞球',
                  assets: Assets.icons.flag.svg(
                    width: 12.291259765625,
                    height: 12.291259765625,
                  ),
                  color: const Color.fromRGBO(66, 133, 244, 0.7),
                ),
                NotificationCardTag(
                  tagName: '撞球',
                  assets: Assets.icons.sell.svg(
                    width: 12.291259765625,
                    height: 12.291259765625,
                  ),
                  color: Colors.blue,
                )
              ],
              // ignore: prefer_const_constructors
            ),
            const NotificationCardTimeUp(timeUp: '報名11/02截止'),
          ],
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeNewNotificationDetailCard(
                    content: 'Hello from Source Page!'),
              ),
            );
          },
          child: Container(
            child: Assets.icons.arrowForwardIos.svg(height: 30),
          ),
        )
      ],
    );
  }
}
