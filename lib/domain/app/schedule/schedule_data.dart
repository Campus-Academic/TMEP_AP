import 'package:app_template_v0/domain/app/schedule/course_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'schedule_data.freezed.dart';

@freezed
class ScheduleData with _$ScheduleData {
  const ScheduleData._();
  const factory ScheduleData({
    required List<CourseData> course,
    // required List<TimeCode> time,
  }) = _ScheduleData;
}
