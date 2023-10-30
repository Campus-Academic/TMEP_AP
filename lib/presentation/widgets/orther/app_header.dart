import 'package:app_template_v0/presentation/core/gen/assets.gen.dart';
import 'package:app_template_v0/presentation/core/style/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppHeader extends StatelessWidget {
  final String headerTitle;
  final VoidCallback onPressed;

  // ignore: use_key_in_widget_constructors
  const AppHeader(
      {Key? key, required this.headerTitle, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 391,
          height: 219,
          child: Assets.images.background.cover.svg(
            width: 391,
            height: 219,
          ),
        ),
        Positioned(
          top: 61, // 调整垂直位置以适应您的需求
          left: 16,
          child:
              Text(headerTitle, style: Theme.of(context).textTheme.bodyLarge),
        ),
      ],
    );
  }
}
