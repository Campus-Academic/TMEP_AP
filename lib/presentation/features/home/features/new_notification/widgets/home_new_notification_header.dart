import 'package:app_template_v0/config/index.dart';
import 'package:app_template_v0/presentation/core/gen/assets.gen.dart';
import 'package:app_template_v0/presentation/core/style/text.dart';
import 'package:flutter/material.dart';
// app_localizations
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

///首頁校車的banner小元件
class HomeNewNotificationHeader extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const HomeNewNotificationHeader({Key? key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppLocalizations.of(context)!.news,
          style: TextThemeStyle.kTextStyleH3(
              color: Theme.of(context).primaryColor,
              fontWeight: kFontWeightBold),
        ),
        const SizedBox(
          width: 6,
        ),
        Assets.icons.brandAwareness
            .svg(width: kSmallIconSize, height: kSmallIconSize)
      ],
    );
  }
}
