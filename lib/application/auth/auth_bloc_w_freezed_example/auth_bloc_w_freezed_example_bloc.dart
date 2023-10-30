import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

part 'auth_bloc_w_freezed_example_event.dart';
part 'auth_bloc_w_freezed_example_state.dart';
part 'auth_bloc_w_freezed_example_bloc.freezed.dart';

class AuthBlocWFreezedExampleBloc
    extends Bloc<AuthBlocWFreezedExampleEvent, AuthBlocWFreezedExampleState> {
  AuthBlocWFreezedExampleBloc()
      : super(
          AuthBlocWFreezedExampleState.initial(),
        ) {
    on<AuthBlocWFreezedExampleEvent>(_onEvent, transformer: sequential());
  }
  Future<void> _onEvent(
    AuthBlocWFreezedExampleEvent event,
    Emitter<AuthBlocWFreezedExampleState> emit,
  ) async {
    event.map(
      initial: (e) {},
      signIn: (e) async {},
    );
  }
}
