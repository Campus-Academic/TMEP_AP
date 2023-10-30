// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_template_v0/presentation/layout/app_home_nav_page.dart'
    as _i1;
import 'package:app_template_v0/presentation/pages/auth/login_page.dart' as _i5;
import 'package:app_template_v0/presentation/pages/home/home_page.dart' as _i3;
import 'package:app_template_v0/presentation/pages/home/home_page_nest_example.dart'
    as _i4;
import 'package:app_template_v0/presentation/pages/other_functions/other_functions_page.dart'
    as _i5;
import 'package:app_template_v0/presentation/pages/schedule/schedule_page.dart'
    as _i6;
import 'package:app_template_v0/presentation/router/app_router.dart' as _i7;
import 'package:auto_route/auto_route.dart' as _i8;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AppHomeNavRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AppHomeNavPage(),
      );
    },
    HomeNestRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeNestPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    HomeNestRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeNestPage(),
      );
    },
    OtherFunctionsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.OtherFunctionsPage(),
      );
    },
    ScheduleRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SchedulePage(),
      );
    },
    HomeTab.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomeTabPage(),
      );
    },
    ScheduleTab.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ScheduleTabPage(),
      );
    },
    OthersTab.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.OthersTabPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AppHomeNavPage]
class AppHomeNavRoute extends _i8.PageRouteInfo<void> {
  const AppHomeNavRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AppHomeNavRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppHomeNavRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeNestPage]
class HomeNestRoute extends _i8.PageRouteInfo<void> {
  const HomeNestRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeNestRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeNestRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeNestPage]
class HomeNestRoute extends _i8.PageRouteInfo<void> {
  const HomeNestRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeNestRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeNestRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.OtherFunctionsPage]
class OtherFunctionsRoute extends _i8.PageRouteInfo<void> {
  const OtherFunctionsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          OtherFunctionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'OtherFunctionsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SchedulePage]
class ScheduleRoute extends _i8.PageRouteInfo<void> {
  const ScheduleRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ScheduleRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScheduleRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.HomeTabPage]
class HomeTab extends _i8.PageRouteInfo<void> {
  const HomeTab({List<_i8.PageRouteInfo>? children})
      : super(
          HomeTab.name,
          initialChildren: children,
        );

  static const String name = 'HomeTab';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ScheduleTabPage]
class ScheduleTab extends _i8.PageRouteInfo<void> {
  const ScheduleTab({List<_i8.PageRouteInfo>? children})
      : super(
          ScheduleTab.name,
          initialChildren: children,
        );

  static const String name = 'ScheduleTab';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.OthersTabPage]
class OthersTab extends _i8.PageRouteInfo<void> {
  const OthersTab({List<_i8.PageRouteInfo>? children})
      : super(
          OthersTab.name,
          initialChildren: children,
        );

  static const String name = 'OthersTab';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
