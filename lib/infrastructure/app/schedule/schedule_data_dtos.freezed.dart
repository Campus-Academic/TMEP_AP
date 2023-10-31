// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_data_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleDataDto _$ScheduleDataDtoFromJson(Map<String, dynamic> json) {
  return _ScheduleDataDto.fromJson(json);
}

/// @nodoc
mixin _$ScheduleDataDto {
  List<CourseDataDto> get course => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleDataDtoCopyWith<ScheduleDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDataDtoCopyWith<$Res> {
  factory $ScheduleDataDtoCopyWith(
          ScheduleDataDto value, $Res Function(ScheduleDataDto) then) =
      _$ScheduleDataDtoCopyWithImpl<$Res, ScheduleDataDto>;
  @useResult
  $Res call({List<CourseDataDto> course});
}

/// @nodoc
class _$ScheduleDataDtoCopyWithImpl<$Res, $Val extends ScheduleDataDto>
    implements $ScheduleDataDtoCopyWith<$Res> {
  _$ScheduleDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
  }) {
    return _then(_value.copyWith(
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as List<CourseDataDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleDataDtoImplCopyWith<$Res>
    implements $ScheduleDataDtoCopyWith<$Res> {
  factory _$$ScheduleDataDtoImplCopyWith(_$ScheduleDataDtoImpl value,
          $Res Function(_$ScheduleDataDtoImpl) then) =
      __$$ScheduleDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CourseDataDto> course});
}

/// @nodoc
class __$$ScheduleDataDtoImplCopyWithImpl<$Res>
    extends _$ScheduleDataDtoCopyWithImpl<$Res, _$ScheduleDataDtoImpl>
    implements _$$ScheduleDataDtoImplCopyWith<$Res> {
  __$$ScheduleDataDtoImplCopyWithImpl(
      _$ScheduleDataDtoImpl _value, $Res Function(_$ScheduleDataDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
  }) {
    return _then(_$ScheduleDataDtoImpl(
      course: null == course
          ? _value._course
          : course // ignore: cast_nullable_to_non_nullable
              as List<CourseDataDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleDataDtoImpl extends _ScheduleDataDto {
  const _$ScheduleDataDtoImpl({required final List<CourseDataDto> course})
      : _course = course,
        super._();

  factory _$ScheduleDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleDataDtoImplFromJson(json);

  final List<CourseDataDto> _course;
  @override
  List<CourseDataDto> get course {
    if (_course is EqualUnmodifiableListView) return _course;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_course);
  }

  @override
  String toString() {
    return 'ScheduleDataDto(course: $course)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleDataDtoImpl &&
            const DeepCollectionEquality().equals(other._course, _course));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_course));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleDataDtoImplCopyWith<_$ScheduleDataDtoImpl> get copyWith =>
      __$$ScheduleDataDtoImplCopyWithImpl<_$ScheduleDataDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleDataDtoImplToJson(
      this,
    );
  }
}

abstract class _ScheduleDataDto extends ScheduleDataDto {
  const factory _ScheduleDataDto({required final List<CourseDataDto> course}) =
      _$ScheduleDataDtoImpl;
  const _ScheduleDataDto._() : super._();

  factory _ScheduleDataDto.fromJson(Map<String, dynamic> json) =
      _$ScheduleDataDtoImpl.fromJson;

  @override
  List<CourseDataDto> get course;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleDataDtoImplCopyWith<_$ScheduleDataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
