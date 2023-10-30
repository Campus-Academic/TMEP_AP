// core
import 'package:app_template_v0/application/auth/auth_bloc_w_freezed_example/auth_bloc_w_freezed_example_bloc.dart';
import 'package:app_template_v0/domain/core/load_status.dart';
import 'package:app_template_v0/presentation/router/index.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
// bloc
import 'package:flutter_bloc/flutter_bloc.dart';

// Copyright 2023 The Flutter Authors. All rights reserved.
// Author: 賴泓瑋

/// Main screen, displaying campus event information.

///
/// Introduction:
///
///  * Routing
///  * Main screen cards
///
@RoutePage()
class LoginPage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return BlocListener<AuthBlocWFreezedExampleBloc,
        AuthBlocWFreezedExampleState>(
      listenWhen: (previous, current) =>
          previous.loadStatus != current.loadStatus,
      listener: (context, state) {
        // TODO: implement listener
        if (state.loadStatus == LoadStatus.loaded) {
          context.router
            ..popUntilRoot()
            ..replace(
              const AppHomeNavRoute(),
            );
        }
        if (state.loadStatus == LoadStatus.error) {
          // TODO: show error dialog
          showDialog(
            context: context,
            builder: (context) {
              return const AlertDialog(
                content: Text('invalid account/ password'),
              );
            },
          );
        }
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                '欢迎来到首页！',
                style: TextStyle(fontSize: 24.0),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                    labelText: '用户名',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    labelText: '密码',
                  ),
                  obscureText: true, // 隐藏密码
                ),
              ),
              TextButton(
                onPressed: () {
                  final username = usernameController.text;
                  final password = passwordController.text;
                  context.read<AuthBlocWFreezedExampleBloc>().add(
                        AuthBlocWFreezedExampleEvent.signIn(
                            userAccount: username, userPassword: password),
                      );
                },
                child: const Text('登录'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
