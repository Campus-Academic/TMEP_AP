// page
import 'package:app_template_v0/layout/app_layout.dart';
import 'package:app_template_v0/widgets/base/base_page.dart';
// router
import 'package:get/get.dart';

class AppRoutes {
  static final List<GetPage> routes = [
    GetPage(name: '/', page: () => const AppLayout()),
    GetPage(name: '/home', page: () => const BaseTestView()),
    // GetPage(name: '/profile', page: () => UserProfileScreen()),
    // GetPage(name: '/settings', page: () => SettingsScreen()),
  ];

  static const String initialRoute = '/';
}
