import 'package:app_template_v0/presentation/core/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import '../../../widgets/index.dart';

class HomeNewNotificationDetailInformationBox extends StatelessWidget {
  final String title;
  const HomeNewNotificationDetailInformationBox({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const NotificationCardTimeUp(timeUp: '報名11/02截止'),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Row(
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
                  ),
                  NotificationCardTag(
                    tagName: '建工校區',
                    assets: Assets.icons.sell.svg(
                        // width: 12.291259765625,
                        // height: 12.291259765625,
                        ),
                    color: const Color(0xB28A6DFB),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Color(0xFF616161),
                  fontFamily: 'IBM Plex Sans Condensed',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: _buildButton(
                      icon: Icons.event_note,
                      label: '填寫表單',
                      onPressed: () {
                        // 处理年写表单按钮点击事件
                      },
                    ),
                  ),
                  const SizedBox(width: 12), // 添加水平方向的间距
                  Expanded(
                    child: _buildButton(
                      icon: Icons.share,
                      label: '分享出去',
                      onPressed: () {
                        // 处理分享出去按钮点击事件
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(label),
    );
  }
}
