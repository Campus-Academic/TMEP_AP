// conf
import 'package:app_template_v0/domain/app/auth/auth_failure.dart';
import 'package:app_template_v0/domain/app/user_data.dart';
import 'package:app_template_v0/domain/models/index.dart';
// blocˊ
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
// Option
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
// freezed_
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_actor_bloc.freezed.dart';
part 'auth_actor_event.dart';
part 'auth_actor_state.dart';

class AuthActorBloc extends Bloc<AuthActorEvent, AuthActorState> {
  AuthActorBloc()
      : super(
          AuthActorState.initial(),
        ) {
    on<AuthActorEvent>(_onEvent, transformer: sequential());
  }

  Future<void> _onEvent(
    AuthActorEvent event,
    Emitter<AuthActorState> emit,
  ) async {
    await event.map(
      initial: (e) async {
        final initialState = AuthActorState.initial();
        emit(initialState);
      },
      loggedIn: (e) async {
        final userData = e.userData; // 获取传递的 userData
        try {
          // 处理登录逻辑，使用传递的 userData
          // ...
          emit(AuthActorState.loggedIn(userData));
        } catch (error) {
          // 处理登录失败情况
          emit(
            AuthActorState.loginFailed(
              const AuthFailure.invalidEmailOrPassword(),
            ),
          );
        }
      },
      loginFailed: (e) async {},
      signOut: (e) async {
        // 处理注销逻辑
        emit(AuthActorState.initial()); // 恢复到初始状态
      },
    );
  }
}
