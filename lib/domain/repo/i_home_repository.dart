import 'package:app_template_v0/domain/app/auth/auth_failure.dart';
import 'package:app_template_v0/domain/app/schedule/schedule_data.dart';
import 'package:app_template_v0/domain/app/user_data.dart';
import 'package:dartz/dartz.dart';

abstract class IHomeRepository {
  Future<Either<AuthFailure, ScheduleData>> getSchedule();
}
