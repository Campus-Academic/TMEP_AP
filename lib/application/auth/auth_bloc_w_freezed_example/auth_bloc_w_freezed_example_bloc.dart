import 'package:app_template_v0/domain/models/load_status.dart';
import 'package:app_template_v0/infrastructure/app/user_data.dart';
import 'package:app_template_v0/infrastructure/repo/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

part 'auth_bloc_w_freezed_example_event.dart';
part 'auth_bloc_w_freezed_example_state.dart';
part 'auth_bloc_w_freezed_example_bloc.freezed.dart';

class AuthBlocWFreezedExampleBloc
    extends Bloc<AuthBlocWFreezedExampleEvent, AuthBlocWFreezedExampleState> {
  final AuthRepository _authRepository;

  AuthBlocWFreezedExampleBloc(
    this._authRepository,
  ) : super(AuthBlocWFreezedExampleState.initial()) {
    on<AuthBlocWFreezedExampleEvent>(_onEvent, transformer: sequential());
  }

  Future<void> _onEvent(
    AuthBlocWFreezedExampleEvent event,
    Emitter<AuthBlocWFreezedExampleState> emit,
  ) async {
    await event.map(
      initial: (e) {},
      signIn: (e) async {
        emit(
          state.copyWith(loadStatus: LoadStatus.loading),
        );
        // TODO: 發API去確認帳號密碼
        final failureOrSuccess = await _authRepository.signIn(
          user: UserData(
              account: e.userAccount,
              password: e.userPassword,
              campus: 'campus',
              schoolYear: 'schoolYear'),
        );
        failureOrSuccess.fold(
          (l) {
            // TODO: do somthing if failed,
            emit(
              state.copyWith(
                loadStatus: LoadStatus.error,
              ),
            );
          },
          (r) {
            emit(
              state.copyWith(
                isSignedIn: true,
                loadStatus: LoadStatus.loaded,
              ),
            );
          },
        );
      },
    );
  }
}
