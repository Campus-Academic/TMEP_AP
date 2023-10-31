import 'package:app_template_v0/domain/app/auth/auth_failure.dart';
import 'package:app_template_v0/domain/models/index.dart';
import 'package:app_template_v0/infrastructure/repo/i_auth_repository.dart';
import 'package:dartz/dartz.dart';

class AuthRepository extends IAuthRepository {
  @override
  Future<Either<AuthFailure, String>> signIn({
    required UserData user,
  }) async {
    // TODO: implement signIn
    if (user.account.isEmpty || user.password.isEmpty) {
      return left(
        const AuthFailure.invalidEmailOrPassword(),
      );
    }
    return right('user token');
  }
}
