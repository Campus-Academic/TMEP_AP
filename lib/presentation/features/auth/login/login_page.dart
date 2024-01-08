// core
import 'dart:math';

import 'package:app_template_v0/application/auth/auth_bloc_w_freezed_example/auth_bloc_w_freezed_example_bloc.dart';
import 'package:app_template_v0/domain/models/load_status.dart';
import 'package:app_template_v0/presentation/core/gen/assets.gen.dart';
import 'package:app_template_v0/presentation/router/index.dart';
import 'package:app_template_v0/presentation/widgets/orther/wave_clip.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// bloc
import 'package:flutter_bloc/flutter_bloc.dart';
// app_localizations
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// icon

import 'widgets/index.dart';

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

  get child => null;

  @override
  Widget build(BuildContext context) {
    // final TextEditingController usernameController = TextEditingController();
    // final TextEditingController passwordController = TextEditingController();

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
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              ClipPath(
                clipper: WaveClip(),
                child: Container(
                  height: 300.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      colors: [
                        Color(0xff19B0EC),
                        Color(0xff456FE8),
                      ],
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 35,
                        left: 20,
                        child: Text(AppLocalizations.of(context)!.homePage),
                      ),
                    ],
                  ),
                ),
              ),
              // Container(
              //   width: 357,
              //   height: 64,
              //   padding: const EdgeInsets.only(
              //     top: 20,
              //     left: 20,
              //     right: 35,
              //     bottom: 20,
              //   ),
              //   decoration: ShapeDecoration(
              //     color: const Color(0xFFF1F4FF),
              //     shape: RoundedRectangleBorder(
              //       side: const BorderSide(width: 2, color: Color(0xFF1F41BB)),
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //   ),
              //   child: const Row(
              //     mainAxisSize: MainAxisSize.min,
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Text(
              //         'Email',
              //         textAlign: TextAlign.center,
              //         style: TextStyle(
              //           color: Color(0xFF616161),
              //           fontSize: 16,
              //           fontFamily: 'Poppins',
              //           fontWeight: FontWeight.w500,
              //           height: 0,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  // icon
                  Center(
                      child: Assets.images.background.undrawBookLoverReRwjy1
                          .svg()),
                  LoginForm(
                    onLogin: (String username, String password) {
                      if (kDebugMode) {
                        print('Received username: $username');
                        print('Received password: $password');
                      }

                      // vaild to lign with authbloc
                      context.read<AuthBlocWFreezedExampleBloc>().add(
                            AuthBlocWFreezedExampleEvent.signIn(
                                userAccount: username, userPassword: password),
                          );
                    },
                  )
                  // Center(
                  //   child: Padding(
                  //     padding: const EdgeInsets.symmetric(horizontal: 30),
                  //     child: Card(
                  //       child: Column(
                  //         mainAxisSize: MainAxisSize.min,
                  //         children: <Widget>[
                  //           LoginForm(
                  //             onLogin: (String username, String password) {
                  //               if (kDebugMode) {
                  //                 print('Received username: $username');
                  //                 print('Received password: $password');
                  //               }

                  //               // vaild to lign with authbloc
                  //               context.read<AuthBlocWFreezedExampleBloc>().add(
                  //                     AuthBlocWFreezedExampleEvent.signIn(
                  //                         userAccount: username,
                  //                         userPassword: password),
                  //                   );
                  //             },
                  //           )
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
        // body: Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       const Text(
        //         '欢迎来到首页！',
        //         style: TextStyle(fontSize: 24.0),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(16.0),
        //         child: TextField(
        //           controller: usernameController,
        //           decoration: const InputDecoration(
        //             labelText: '用户名',
        //           ),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(16.0),
        //         child: TextField(
        //           controller: passwordController,
        //           decoration: const InputDecoration(
        //             labelText: '密码',
        //           ),
        //           obscureText: true, // 隐藏密码
        //         ),
        //       ),
        //       TextButton(
        //         onPressed: () {
        //           final username = usernameController.text;
        //           final password = passwordController.text;
        //           context.read<AuthBlocWFreezedExampleBloc>().add(
        //                 AuthBlocWFreezedExampleEvent.signIn(
        //                     userAccount: username, userPassword: password),
        //               );
        //         },
        //         child: const Text('登录'),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
