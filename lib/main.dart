// flutter core
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
// localization
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// routers
import 'package:app_template_v0/router.dart';
// bloc
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_template_v0/bloc/auth_bloc.dart';
// Copyright 2023 The Flutter Authors. All rights reserved.
// Author: 賴泓瑋

/// The settings entry point for this app

///
/// Introduction:
///
///  * localizationsDelegates
///  * routers
///
void main() {
  runApp(
    MaterialApp(
      home: BlocProvider(
        create: (_) => AuthBloc(),
        child: const APP(),
      ),
    ),
  );
}

class APP extends StatelessWidget {
  const APP({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('zh'),
      ],
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.routes,
    );
  }
}

// ------------------------------------------------------------------------------------------------
// orther

// class APP extends StatelessWidget {
//   const APP({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       localizationsDelegates: [
//         AppLocalizations.delegate,
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//         GlobalCupertinoLocalizations.delegate,
//       ],
//       supportedLocales: [
//         Locale('en'),
//         Locale('zh'),
//       ],
//       home: AppLayout(),
//     );
//   }
// }
