// flutter core
import 'package:app_template_v0/application/auth/index.dart';
import 'package:flutter/material.dart';
// bliock
import 'package:app_template_v0/app_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// The settings entry point for this app

void main() {
  // TODO: Firebase config, 各種初始化...
  final authActorBloc = AuthActorBloc();

  runApp(
    // 使用 MultiBlocProvider 来提供 AuthActorBloc
    MultiBlocProvider(
      providers: [
        BlocProvider<AuthActorBloc>(
          create: (context) => authActorBloc,
        ),
      ],
      child: AppWidget(),
    ),
  );
}

// class APP extends StatelessWidget {
//   const APP({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       // localization init
//       localizationsDelegates: const [
//         AppLocalizations.delegate,
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//         GlobalCupertinoLocalizations.delegate,
//       ],
//       supportedLocales: const [
//         Locale('en'),
//         Locale('zh'),
//       ],
//       // TODO: default support ???
//       // locale: const Locale('zh'),
//       // theme init
//       theme: dayTheme,
//       darkTheme: nightTheme,
//       themeMode: ThemeMode.system,
//       // router init
//       initialRoute: AppRoutes.initialRoute,
//       getPages: AppRoutes.routes,
//     );
//   }
// }

// // ------------------------------------------------------------------------------------------------
// // orther

// // class APP extends StatelessWidget {
// //   const APP({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return const GetMaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       localizationsDelegates: [
// //         AppLocalizations.delegate,
// //         GlobalMaterialLocalizations.delegate,
// //         GlobalWidgetsLocalizations.delegate,
// //         GlobalCupertinoLocalizations.delegate,
// //       ],
// //       supportedLocales: [
// //         Locale('en'),
// //         Locale('zh'),
// //       ],
// //       home: AppLayout(),
// //     );
// //   }
// // }
