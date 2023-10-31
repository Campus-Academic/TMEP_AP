import 'package:app_template_v0/domain/app/schedule/schedule_data.dart';
import 'package:app_template_v0/infrastructure/app/schedule/course_data_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_data_dtos.freezed.dart';
part 'schedule_data_dtos.g.dart';

@freezed
class ScheduleDataDto with _$ScheduleDataDto {
  const ScheduleDataDto._();
  const factory ScheduleDataDto({
    required List<CourseDataDto> course,
  }) = _ScheduleDataDto;
  ScheduleData toDomain() => ScheduleData(
        course: course.map((dto) => dto.toDomain()).toList(),
      );
  factory ScheduleDataDto.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDataDtoFromJson(json);
}
