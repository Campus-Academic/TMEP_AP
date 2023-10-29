import 'package:app_template_v0/presentation/core/style/color.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AppHomeNavBarWidget extends StatelessWidget {
  const AppHomeNavBarWidget({
    super.key,
    required this.items,
    required this.tabsRouter,
  });

  final TabsRouter tabsRouter;
  final List<BottomNavigationBarItem> items;

  @override
  Widget build(BuildContext context) {
    void handleTabTap(int index) {
      tabsRouter.setActiveIndex(index);
    }

    return SizedBox(
      height: 70.0,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorStyle.black,
        unselectedItemColor: ColorStyle.lightGrey,
        currentIndex: tabsRouter.activeIndex,
        onTap: (index) => handleTabTap(index),
        items: items,
      ),
    );
  }
}
