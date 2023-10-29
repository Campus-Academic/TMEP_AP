// // layout
// import 'package:app_template_v0/presentation/layout/app_layout.dart';
// // conf -> router
// import 'package:app_template_v0/config/index.dart';
// // pages
// import 'package:app_template_v0/presentation/pages/index.dart';
// // test page
// import 'package:app_template_v0/presentation/widgets/base/base_page.dart';
// // bloc
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// // router Get
// import 'package:get/get.dart';

// import '../application/auth/index.dart';

// // Copyright 2023 The Flutter Authors. All rights reserved.
// // Author: 賴泓瑋

// /// The Routers

// ///
// /// Introduction:
// ///
// ///  * homepage: homepage
// ///  * login: login
// ///  * logout: logout
// ///
// class AppRoutes {
//   static final List<GetPage> routes = [
//     GetPage(
//         name: RouterConf.init,
//         page: () {
//           final context = Get.context;
//           if (context != null) {
//             final authBloc = BlocProvider.of<AuthBloc>(context);
//             final isLogged = (authBloc.state is AuthBlocLoggedIn);
//             // TODO: this is test isLogged
//             // const isLogged = false;

//             return isLogged ? const AppLayout() : const LoginPage();
//           } else {
//             // 处理上下文为空的情况
//             return const LoginPage(); // 或其他适当的操作
//           }
//         }),
//     // authentication
//     GetPage(name: AuthRouters.login, page: () => const BaseTestView()),
//     GetPage(name: AuthRouters.logout, page: () => const BaseTestView()),
//     //  error
//     GetPage(name: RouterConf.error, page: () => const ErrorPage()),
//     // notfound
//     // GetPage(name: RouterConf.notFound, page: () => const ErrorPage()),
//   ];

//   static const String initialRoute = RouterConf.init;
// }
