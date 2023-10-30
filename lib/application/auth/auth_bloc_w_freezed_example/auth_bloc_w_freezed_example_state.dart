part of 'auth_bloc_w_freezed_example_bloc.dart';

@freezed
class AuthBlocWFreezedExampleState with _$AuthBlocWFreezedExampleState {
  const AuthBlocWFreezedExampleState._();
  const factory AuthBlocWFreezedExampleState({
    required bool isSignedIn,
    required LoadStatus loadStatus,
  }) = _AuthBlocWFreezedExampleState;

  factory AuthBlocWFreezedExampleState.initial() =>
      const AuthBlocWFreezedExampleState(
        isSignedIn: false,
        loadStatus: LoadStatus.initial,
      );
}
