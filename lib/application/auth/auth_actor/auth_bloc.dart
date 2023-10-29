// conf
import 'package:app_template_v0/config/index.dart';
// bloc
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';

// class AuthBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
//   // static AuthBloc? _instance;
//   // static AuthBloc get instance {
//   //   _instance ??= AuthBloc();
//   //   return _instance!;
//   // }

//   AuthBloc()
//       : super(const AuthBlocInitial(isLogged: SettingsManager.isLogged)) {
//     on<LoginEvent>((event, emit) {
//       // 处理登录事件
//       final username = event.username;
//       final password = event.password;

//       if (username == 'your_username' && password == 'your_password') {
//         emit(AuthBlocLoggedIn(username, password, isLogged: true));
//       } else {
//         emit(const AuthBlocError("Invalid credentials"));
//       }
//     });

//     on<LogoutEvent>((event, emit) {
//       // 处理注销事件
//       emit(const AuthBlocLoggedOut(isLogged: false));
//     });

//     on<ChangePasswordEvent>((event, emit) {
//       // 处理更改密码事件
//       // 实现更改密码逻辑
//       // 如果成功，可以使用 emit 发出相应状态
//     });
//   }

//   Stream<AuthBlocState> mapEventToState(AuthBlocEvent event) async* {
//     if (event is UpdateLoginStatusEvent) {
//       yield AuthBlocLoggedInState(event.isLogged);
//     }
//   }
// }

class AuthBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  AuthBloc() : super(const AuthBlocInitial(isLogged: SettingsManager.isLogged));

  void updateCredentials(String username, String password, bool isLogged) {
    if (isLogged) {
      // ignore: invalid_use_of_visible_for_testing_member
      emit(AuthBlocLoggedIn(username, password, isLogged: true));
    } else {
      // ignore: invalid_use_of_visible_for_testing_member
      emit(const AuthBlocLoggedOut(isLogged: false));
    }
  }

  Stream<AuthBlocState> mapEventToState(AuthBlocEvent event) async* {
    // Handle any other events if needed
  }
}
