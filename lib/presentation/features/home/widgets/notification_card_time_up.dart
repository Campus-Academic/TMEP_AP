import 'package:app_template_v0/config/index.dart';
import 'package:app_template_v0/presentation/core/gen/assets.gen.dart';
import 'package:app_template_v0/presentation/core/style/index.dart';
import 'package:app_template_v0/presentation/features/home/features/notification_card/home_new_notification_card.dart';
import 'package:flutter/material.dart';

/// home page notification 的 Tags
/// [timeUp] :到期時間
class NotificationCardTimeUp extends StatelessWidget {
  final String timeUp;

  const NotificationCardTimeUp({Key? key, required this.timeUp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 57,
      // height: 20,
      child: Row(
        children: [
          Assets.icons.pace.svg(
            width: 16,
            height: 16,
          ),
          Text(
            timeUp,
            style: TextStyle(
                fontSize: 12,
                fontWeight: kFontWeightBold,
                color: Theme.of(context).indicatorColor),
          ),
        ],
      ),
    );
  }
}
