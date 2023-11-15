import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_data.freezed.dart';

@freezed
class CourseData with _$CourseData {
  const CourseData._();
  const factory CourseData({
    required String code,
    required String title,
    required String className,
    required String group,
    required String units,
    required String hours,
    required bool isRequired,
    required List<String> instructors,
  }) = _CourseData;
  factory CourseData.empty() => const CourseData(
        code: 'code',
        title: 'title',
        className: 'className',
        group: 'group',
        units: 'units',
        hours: 'hours',
        isRequired: true,
        instructors: <String>[],
      );
}
