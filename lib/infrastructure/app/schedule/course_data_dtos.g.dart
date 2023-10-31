// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_data_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseDataDtoImpl _$$CourseDataDtoImplFromJson(Map<String, dynamic> json) =>
    _$CourseDataDtoImpl(
      code: json['code'] as String,
      title: json['title'] as String,
      className: json['className'] as String,
      group: json['group'] as String,
      units: json['units'] as String,
      hours: json['hours'] as String,
      isRequired: json['isRequired'] as bool,
      instructors: (json['instructors'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$CourseDataDtoImplToJson(_$CourseDataDtoImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'title': instance.title,
      'className': instance.className,
      'group': instance.group,
      'units': instance.units,
      'hours': instance.hours,
      'isRequired': instance.isRequired,
      'instructors': instance.instructors,
    };
