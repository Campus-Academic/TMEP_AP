import 'package:app_template_v0/presentation/core/style/text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeNestPage extends StatelessWidget {
  const HomeNestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'some page under home',
              style: TextThemeStyle.kTextStyleH2(),
            ),
          ],
        ),
      ),
    );
  }
}
