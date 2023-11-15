// flutter core
import 'package:app_template_v0/application/auth/auth_bloc_w_freezed_example/auth_bloc_w_freezed_example_bloc.dart';
import 'package:app_template_v0/infrastructure/repo/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// bloc
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// localization
import 'package:flutter_localizations/flutter_localizations.dart';

import 'application/index.dart';
import 'presentation/core/style/theme/index.dart';
import 'presentation/router/index.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return
        // TODO: 不知道 MultiRepositoryProvider要放在這還是 mian那邊
        // 如果外面那層沒有用到provider的必要，就放這層就好
        MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthRepository(),
        )
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthActorBloc>(
            create: (context) => AuthActorBloc(),
          ),
          BlocProvider(
            create: (context) => AuthBlocWFreezedExampleBloc(
              context.read<AuthRepository>(),
            ),
          )
        ],
        child: MaterialApp.router(
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
        ),
      ),
    );
  }
}
