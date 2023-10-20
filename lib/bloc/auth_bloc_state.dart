part of 'auth_bloc_bloc.dart';

@immutable
sealed class AuthBlocState {
  const AuthBlocState();
}

class AuthBlocInitial extends AuthBlocState {}

class AuthBlocLoggedIn extends AuthBlocState {
  final String username;
  final String password;

  const AuthBlocLoggedIn(this.username, this.password);
}

class AuthBlocLoggedOut extends AuthBlocState {}

class AuthBlocError extends AuthBlocState {
  final String error;

  const AuthBlocError(this.error);
}
