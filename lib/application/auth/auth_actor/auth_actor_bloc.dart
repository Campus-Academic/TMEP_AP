// conf
// import 'package:app_template_v0/config/index.dart';
// models
import 'package:app_template_v0/infrastructure/interface/index.dart';
// freezed_
import 'package:freezed_annotation/freezed_annotation.dart';
// Option
import 'package:dartz/dartz.dart';
// bloc
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

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
    if (event is _Initial) {
      final initialState = AuthActorState.initial();
      emit(initialState);
    } else if (event is _LoggedIn) {
      final userData = event.userData; // 获取传递的 userData
      try {
        // 处理登录逻辑，使用传递的 userData
        // ...
        emit(AuthActorState.loggedIn(userData));
      } catch (error) {
        // 处理登录失败情况
        final failure =
            AuthFailure(code: "LOGIN_FAILURE", message: error.toString());
        emit(AuthActorState.loginFailed(failure));
      }
    } else if (event is _SignOut) {
      // 处理注销逻辑
      emit(AuthActorState.initial()); // 恢复到初始状态
    }
  }
}
