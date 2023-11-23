// flutter core
import 'package:app_template_v0/presentation/features/other_functions/setting_page.dart';
import 'package:flutter/material.dart';
// widgets
import 'package:app_template_v0/presentation/widgets/index.dart';
import 'package:auto_route/auto_route.dart';
// app_localizations

@RoutePage()
class OtherFunctionsPage extends StatelessWidget {
  const OtherFunctionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppHeader(
              headerTitle: "設定",
              onPressed: () {},
            ),
          ),
          const Positioned(
            top: 129,
            left: 0,
            right: 0,
            bottom: 0,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SettingPage(page: 1),
                  SizedBox(height: 10),
                  SettingPage(page: 2),
                  SizedBox(height: 10),
                  SettingPage(page: 3),
                  SizedBox(height: 10),
                  SettingPage(page: 4),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
