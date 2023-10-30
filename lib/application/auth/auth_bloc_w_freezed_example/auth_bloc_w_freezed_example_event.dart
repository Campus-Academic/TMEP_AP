part of 'auth_bloc_w_freezed_example_bloc.dart';

@freezed
class AuthBlocWFreezedExampleEvent with _$AuthBlocWFreezedExampleEvent {
  const factory AuthBlocWFreezedExampleEvent.initial() = _Initial;
  const factory AuthBlocWFreezedExampleEvent.signIn({
    required String userAccount,
    required String userPassword,
  }) = _SignIn;
}
