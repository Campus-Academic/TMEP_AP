
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:app_template_v0/presentation/core/style/color.dart';
import 'package:app_template_v0/presentation/widgets/bar/nav_bar/bottom_nav_bar.dart'; // 引入自定義底部導航欄
import 'package:app_template_v0/presentation/router/app_router.gr.dart';

@RoutePage()
class AppHomeNavPage extends StatelessWidget {
  const AppHomeNavPage({super.key});

  @override
  Widget build(context) {
    final List<PageRouteInfo<dynamic>> routes = [
      const ScheduleRoute(),
      const HomeRoute(),
      const OtherFunctionsRoute(),
    ];

    // 這裡我們將使用自定義的底部導航欄
    return WillPopScope(
      onWillPop: () async => false,
      child: AutoTabsScaffold(
        backgroundColor: ColorStyle.beige,
        routes: routes,
        bottomNavigationBuilder: (_, tabsRouter) {
          return CustomBottomNavigationBar(
            isLogged: false, // 根據您的應用邏輯設置
            selectedIndex: tabsRouter.activeIndex, // 使用tabsRouter的activeIndex
            onItemSelected: (index) {
              tabsRouter.setActiveIndex(index); // 切換頁面
            },
            userImagePath: "assets/images/user_image.png", // 根據您的應用邏輯設置
          );
        },
      ),
    );
  }
}