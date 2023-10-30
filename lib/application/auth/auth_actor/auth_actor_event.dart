part of 'auth_actor_bloc.dart';

@freezed
abstract class AuthActorEvent with _$AuthActorEvent {
  const factory AuthActorEvent.initial() = _Initial;
  const factory AuthActorEvent.loggedIn(UserData userData) = _LoggedIn;
  const factory AuthActorEvent.loginFailed(AuthFailure failure) = _LoginFailed;
  const factory AuthActorEvent.signOut() = _SignOut;
}
