part of 'auth_bloc.dart';

@immutable
sealed class AuthBlocEvent {
  const AuthBlocEvent();
}

class LoginEvent extends AuthBlocEvent {
  final String username;
  final String password;

  const LoginEvent(this.username, this.password);
}

class LogoutEvent extends AuthBlocEvent {}

class ChangePasswordEvent extends AuthBlocEvent {
  final String newPassword;

  const ChangePasswordEvent(this.newPassword);
}

class UpdateLoginStatusEvent extends AuthBlocEvent {
  final bool isLogged;

  const UpdateLoginStatusEvent(this.isLogged);
}
