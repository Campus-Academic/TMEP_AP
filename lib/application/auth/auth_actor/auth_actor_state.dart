part of 'auth_actor_bloc.dart';

@freezed
abstract class AuthActorState with _$AuthActorState {
  const factory AuthActorState._({
    required UserData user,
    required Option<AuthFailure> failureOption,
    required LoadStatus status,
  }) = _AuthActorState;

  factory AuthActorState.initial() => _AuthActorState(
        user: UserData.empty(),
        failureOption: none(),
        status: LoadStatus.initial,
      );

  factory AuthActorState.loggedIn(UserData userData) => _AuthActorState(
        user: userData,
        failureOption: none(),
        status: LoadStatus.loaded,
      );

  factory AuthActorState.loginFailed(AuthFailure failure) => _AuthActorState(
        user: UserData.empty(),
        failureOption: some(failure),
        status: LoadStatus.error,
      );
}
