// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_data_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleDataDtoImpl _$$ScheduleDataDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduleDataDtoImpl(
      course: (json['course'] as List<dynamic>)
          .map((e) => CourseDataDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ScheduleDataDtoImplToJson(
        _$ScheduleDataDtoImpl instance) =>
    <String, dynamic>{
      'course': instance.course,
    };
