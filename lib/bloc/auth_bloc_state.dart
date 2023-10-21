part of 'auth_bloc.dart';

@immutable
sealed class AuthBlocState {
  const AuthBlocState();
}

class AuthBlocInitial extends AuthBlocState {
  final bool isLogged;

  const AuthBlocInitial({required this.isLogged}) : assert(isLogged == true);
}

class AuthBlocLoggedIn extends AuthBlocState {
  final String username;
  final String password;
  final bool isLogged;

  const AuthBlocLoggedIn(this.username, this.password,
      {required this.isLogged});
}

class AuthBlocLoggedOut extends AuthBlocState {
  final bool isLogged; // 新增 isLogged 字段

  const AuthBlocLoggedOut({required this.isLogged});
}

class AuthBlocError extends AuthBlocState {
  final String error;

  const AuthBlocError(this.error);
}
