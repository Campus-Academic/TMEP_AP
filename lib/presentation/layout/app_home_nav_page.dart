import 'package:app_template_v0/presentation/core/style/color.dart';
import 'package:app_template_v0/presentation/layout/app_home_nav_bar_widget.dart';
import 'package:app_template_v0/presentation/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

    final List<BottomNavigationBarItem> items = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
        label: 'schedule',
        icon: Icon(Icons.class_),
      ),
      const BottomNavigationBarItem(
        label: 'home',
        icon: Icon(Icons.home),
      ),
      const BottomNavigationBarItem(
        label: 'others',
        icon: Icon(Icons.functions_rounded),
      ),
    ];

    appHomeInit(context);

    return
        // MultiBlocProvider(
        //   providers: [],
        //   child: MultiBlocListener(
        //     listeners: [],
        //     child:
        WillPopScope(
      onWillPop: () async => false,
      child: AutoTabsScaffold(
        backgroundColor: ColorStyle.beige,
        routes: routes,
        bottomNavigationBuilder: (_, tabsRouter) {
          return AppHomeNavBarWidget(
            items: items,
            tabsRouter: tabsRouter,
          );
        },
      ),
      //   ),
      // ),
    );
  }
}

void appHomeInit(BuildContext context) {
  // TODO: init bloc, fetch data...
}