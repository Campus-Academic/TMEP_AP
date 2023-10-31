// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScheduleData {
  List<CourseData> get course => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleDataCopyWith<ScheduleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDataCopyWith<$Res> {
  factory $ScheduleDataCopyWith(
          ScheduleData value, $Res Function(ScheduleData) then) =
      _$ScheduleDataCopyWithImpl<$Res, ScheduleData>;
  @useResult
  $Res call({List<CourseData> course});
}

/// @nodoc
class _$ScheduleDataCopyWithImpl<$Res, $Val extends ScheduleData>
    implements $ScheduleDataCopyWith<$Res> {
  _$ScheduleDataCopyWithImpl(this._value, this._then);

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
              as List<CourseData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleDataImplCopyWith<$Res>
    implements $ScheduleDataCopyWith<$Res> {
  factory _$$ScheduleDataImplCopyWith(
          _$ScheduleDataImpl value, $Res Function(_$ScheduleDataImpl) then) =
      __$$ScheduleDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CourseData> course});
}

/// @nodoc
class __$$ScheduleDataImplCopyWithImpl<$Res>
    extends _$ScheduleDataCopyWithImpl<$Res, _$ScheduleDataImpl>
    implements _$$ScheduleDataImplCopyWith<$Res> {
  __$$ScheduleDataImplCopyWithImpl(
      _$ScheduleDataImpl _value, $Res Function(_$ScheduleDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
  }) {
    return _then(_$ScheduleDataImpl(
      course: null == course
          ? _value._course
          : course // ignore: cast_nullable_to_non_nullable
              as List<CourseData>,
    ));
  }
}

/// @nodoc

class _$ScheduleDataImpl extends _ScheduleData {
  const _$ScheduleDataImpl({required final List<CourseData> course})
      : _course = course,
        super._();

  final List<CourseData> _course;
  @override
  List<CourseData> get course {
    if (_course is EqualUnmodifiableListView) return _course;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_course);
  }

  @override
  String toString() {
    return 'ScheduleData(course: $course)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleDataImpl &&
            const DeepCollectionEquality().equals(other._course, _course));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_course));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleDataImplCopyWith<_$ScheduleDataImpl> get copyWith =>
      __$$ScheduleDataImplCopyWithImpl<_$ScheduleDataImpl>(this, _$identity);
}

abstract class _ScheduleData extends ScheduleData {
  const factory _ScheduleData({required final List<CourseData> course}) =
      _$ScheduleDataImpl;
  const _ScheduleData._() : super._();

  @override
  List<CourseData> get course;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleDataImplCopyWith<_$ScheduleDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
