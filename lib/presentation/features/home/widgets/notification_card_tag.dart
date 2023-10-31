import 'package:app_template_v0/config/index.dart';
import 'package:app_template_v0/presentation/core/gen/assets.gen.dart';
import 'package:app_template_v0/presentation/core/style/index.dart';
import 'package:app_template_v0/presentation/features/home/features/notification_card/home_new_notification_card.dart';
import 'package:flutter/material.dart';

/// home page notification 的 Tags
/// [tagName] :名稱
/// [iocn] : icon
/// [color] : color (tags顏色)
class NotificationCardTag extends StatelessWidget {
  final String tagName;
  final Widget assets;
  final Color color;

  const NotificationCardTag(
      {Key? key,
      required this.tagName,
      required this.color,
      required this.assets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      child: Card(
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // 子元素居中对齐
          children: [
            assets,
            const SizedBox(width: 5.0),
            Text(
              tagName,
              style: TextStyle(
                fontSize: 12,
                fontWeight: kFontWeightNormal,
                color: Theme.of(context).focusColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
