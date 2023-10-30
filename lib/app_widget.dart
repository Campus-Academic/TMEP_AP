// flutter core
import 'package:flutter/material.dart';
// bloc
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// localization
import 'package:flutter_localizations/flutter_localizations.dart';

import 'presentation/core/style/theme/index.dart';
import 'presentation/router/index.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return
        // TODO: 不知道 MultiRepositoryProvider要放在這還是 mian那邊
        // MultiRepositoryProvider(
        //   providers: [],
        //   child: MultiBlocProvider(
        //     providers: [],
        //     child:
        MaterialApp.router(
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
      theme: dayTheme,
      darkTheme: nightTheme,
      themeMode: ThemeMode.system,
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      //   ),
      // ),
    );
  }
}
