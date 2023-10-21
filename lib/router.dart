// layout
import 'package:app_template_v0/layout/app_layout.dart';
// pages
import 'package:app_template_v0/pages/index.dart';
// test page
import 'package:app_template_v0/widgets/base/base_page.dart';
// bloc
import 'package:app_template_v0/bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// router Get
import 'package:get/get.dart';

// Copyright 2023 The Flutter Authors. All rights reserved.
// Author: 賴泓瑋

/// The Routers

///
/// Introduction:
///
///  * homepage: homepage
///  * login: login
///  * logout: logout
///
class AppRoutes {
  static final List<GetPage> routes = [
    GetPage(
        name: '/',
        page: () {
          final context = Get.context;
          if (context != null) {
            final authBloc = BlocProvider.of<AuthBloc>(context);
            // final isLogged = (authBloc.state is AuthBlocLoggedIn);
            // TODO: this is test isLogged
            const isLogged = true;

            return isLogged ? const AppLayout() : const LoginPage();
          } else {
            // 处理上下文为空的情况
            return const LoginPage(); // 或其他适当的操作
          }
        }),
    GetPage(name: '/', page: () => const AppLayout()),
    // core func
    GetPage(name: '/home', page: () => const BaseTestView()),
    // authentication
    GetPage(name: '/login', page: () => const BaseTestView()),
    GetPage(name: '/logout', page: () => const BaseTestView()),
    // GetPage(name: '/profile', page: () => UserProfileScreen()),
    // GetPage(name: '/settings', page: () => SettingsScreen()),
  ];

  static const String initialRoute = '/';
}
