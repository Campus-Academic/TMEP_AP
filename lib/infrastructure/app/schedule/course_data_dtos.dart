import 'package:app_template_v0/domain/app/schedule/course_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_data_dtos.freezed.dart';
part 'course_data_dtos.g.dart';

@freezed
class CourseDataDto with _$CourseDataDto {
  const CourseDataDto._();

  const factory CourseDataDto({
    required String code,
    required String title,
    required String className,
    required String group,
    required String units,
    required String hours,
    required bool isRequired,
    required List<String> instructors,
  }) = _CourseDataDto;

  CourseData toDomain() => CourseData(
        code: code,
        title: title,
        className: className,
        group: group,
        units: units,
        hours: hours,
        isRequired: isRequired,
        instructors: instructors,
      );
  factory CourseDataDto.fromJson(Map<String, dynamic> json) =>
      _$CourseDataDtoFromJson(json);
}
