part of 'auth_bloc_bloc.dart';

@immutable
sealed class AuthBlocEvent {
  const AuthBlocEvent();
}

class LoginEvent extends AuthBlocEvent {
  final String username;
  final String password;

  LoginEvent(this.username, this.password);
}

class LogoutEvent extends AuthBlocEvent {}

class ChangePasswordEvent extends AuthBlocEvent {
  final String newPassword;

  ChangePasswordEvent(this.newPassword);
}
