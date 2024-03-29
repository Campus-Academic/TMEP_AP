import 'package:app_template_v0/domain/app/auth/auth_failure.dart';
import 'package:app_template_v0/domain/app/user_data.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, String>> signIn({
    required UserData user,
  });
}
