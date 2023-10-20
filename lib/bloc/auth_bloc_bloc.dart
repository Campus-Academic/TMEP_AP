import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';

class AuthBlocBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  AuthBlocBloc() : super(AuthBlocInitial()) {
    on<LoginEvent>((event, emit) {
      // 处理登录事件
      final username = event.username;
      final password = event.password;

      if (username == 'your_username' && password == 'your_password') {
        emit(AuthBlocLoggedIn(username, password));
      } else {
        emit(const AuthBlocError("Invalid credentials"));
      }
    });

    on<LogoutEvent>((event, emit) {
      // 处理注销事件
      emit(AuthBlocLoggedOut());
    });

    on<ChangePasswordEvent>((event, emit) {
      // 处理更改密码事件
      // 实现更改密码逻辑
      // 如果成功，可以使用 emit 发出相应状态
    });
  }
}
