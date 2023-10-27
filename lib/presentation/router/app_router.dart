import 'package:app_template_v0/presentation/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: LoginRoute.page, path: '/', initial: true),
    AutoRoute(
      path: '/bottom-navigation',
      page: AppHomeNavRoute.page,
      children: [
        homeTab,
        scheduleTab,
        othersTab,
      ],
    ),
  ];
}

@RoutePage(name: 'HomeTab')
class HomeTabPage extends AutoRouter {
  const HomeTabPage({super.key});
}

@RoutePage(name: 'ScheduleTab')
class ScheduleTabPage extends AutoRouter {
  const ScheduleTabPage({super.key});
}

@RoutePage(name: 'OthersTab')
class OthersTabPage extends AutoRouter {
  const OthersTabPage({super.key});
}

// Nested group route with a tab router
final homeTab = AutoRoute(
  path: 'home',
  page: HomeTab.page,
  children: [
    AutoRoute(
      path: '',
      page: HomeRoute.page,
    ),
    AutoRoute(
      path: 'nest-example',
      page: HomeNestRoute.page,
    ),
  ],
);

final scheduleTab = AutoRoute(
  path: 'schedule',
  page: ScheduleTab.page,
  children: [
    AutoRoute(
      path: '',
      page: ScheduleRoute.page,
    ),
  ],
);

final othersTab = AutoRoute(
  path: 'others',
  page: OthersTab.page,
  children: [
    AutoRoute(
      path: '',
      page: OtherFunctionsRoute.page,
    ),
  ],
);
