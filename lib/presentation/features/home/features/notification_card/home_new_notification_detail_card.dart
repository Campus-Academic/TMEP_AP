import 'package:app_template_v0/presentation/core/gen/fonts.gen.dart';
import 'package:app_template_v0/presentation/features/home/features/new_notification/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:app_template_v0/presentation/core/gen/assets.gen.dart';

class HomeNewNotificationDetailCard extends StatelessWidget {
  final String content;

  const HomeNewNotificationDetailCard({Key? key, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        '羽毛球',
        style: TextStyle(fontWeight: FontWeight.w100),
      )),
      body: ListView(
        children: [
          const HomeNewNotificationDetailInformationBox(
            title: '高科校慶運動會，來運動！踴躍參與',
          ),
          const SizedBox(
            height: 20,
          ),
          // 圖片

          SizedBox(width: 340, height: 483, child: Assets.mock.banner.image()),

          const HomeNewNotificationDetailArticle(
            title: '高科校慶運動會，來運動！踴躍參與',
            content:
                '報名資格高科大羽球比賽是一個年度體育盛事，由高科大學生參與，旨在促進學生運動健康、團隊合作，歡迎各年級學生參加。時間。',
          ),
        ],
      ),
    );
  }
}
