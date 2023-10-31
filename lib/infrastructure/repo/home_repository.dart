import 'dart:convert';

import 'package:app_template_v0/domain/app/auth/auth_failure.dart';
import 'package:app_template_v0/domain/app/schedule/schedule_data.dart';
import 'package:app_template_v0/domain/repo/i_home_repository.dart';
import 'package:app_template_v0/infrastructure/app/schedule/schedule_data_dtos.dart';
import 'package:app_template_v0/presentation/core/gen/assets.gen.dart';
import 'package:dartz/dartz.dart';

class HomeRepository extends IHomeRepository {
  @override
  Future<Either<AuthFailure, ScheduleData>> getSchedule() async {
    // TODO: implement api
    final jsonString = Assets.json.mock.courseData;
    final Map<String, dynamic> jsonMap = json.decode(jsonString);
    final ScheduleData schedule = ScheduleDataDto.fromJson(jsonMap).toDomain();
    return right(schedule);
  }
}
