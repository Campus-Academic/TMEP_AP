import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  // 共用
  const factory AuthFailure.serverError() = _ServerError;

  // 登入
  const factory AuthFailure.invalidEmailOrPassword() =
      _InvalidEmailOrPassword; // 帳號或密碼錯誤
}

// class AuthFailure {
//   final String code;
//   final String message;

//   AuthFailure({required this.code, required this.message});

//   @override
//   String toString() => '$code: $message';
// }
