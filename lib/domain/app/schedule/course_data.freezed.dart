// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CourseData {
  String get code => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get className => throw _privateConstructorUsedError;
  String get group => throw _privateConstructorUsedError;
  String get units => throw _privateConstructorUsedError;
  String get hours => throw _privateConstructorUsedError;
  bool get isRequired => throw _privateConstructorUsedError;
  List<String> get instructors => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseDataCopyWith<CourseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseDataCopyWith<$Res> {
  factory $CourseDataCopyWith(
          CourseData value, $Res Function(CourseData) then) =
      _$CourseDataCopyWithImpl<$Res, CourseData>;
  @useResult
  $Res call(
      {String code,
      String title,
      String className,
      String group,
      String units,
      String hours,
      bool isRequired,
      List<String> instructors});
}

/// @nodoc
class _$CourseDataCopyWithImpl<$Res, $Val extends CourseData>
    implements $CourseDataCopyWith<$Res> {
  _$CourseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? title = null,
    Object? className = null,
    Object? group = null,
    Object? units = null,
    Object? hours = null,
    Object? isRequired = null,
    Object? instructors = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as String,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as String,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      instructors: null == instructors
          ? _value.instructors
          : instructors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseDataImplCopyWith<$Res>
    implements $CourseDataCopyWith<$Res> {
  factory _$$CourseDataImplCopyWith(
          _$CourseDataImpl value, $Res Function(_$CourseDataImpl) then) =
      __$$CourseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code,
      String title,
      String className,
      String group,
      String units,
      String hours,
      bool isRequired,
      List<String> instructors});
}

/// @nodoc
class __$$CourseDataImplCopyWithImpl<$Res>
    extends _$CourseDataCopyWithImpl<$Res, _$CourseDataImpl>
    implements _$$CourseDataImplCopyWith<$Res> {
  __$$CourseDataImplCopyWithImpl(
      _$CourseDataImpl _value, $Res Function(_$CourseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? title = null,
    Object? className = null,
    Object? group = null,
    Object? units = null,
    Object? hours = null,
    Object? isRequired = null,
    Object? instructors = null,
  }) {
    return _then(_$CourseDataImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as String,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as String,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      instructors: null == instructors
          ? _value._instructors
          : instructors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$CourseDataImpl extends _CourseData {
  const _$CourseDataImpl(
      {required this.code,
      required this.title,
      required this.className,
      required this.group,
      required this.units,
      required this.hours,
      required this.isRequired,
      required final List<String> instructors})
      : _instructors = instructors,
        super._();

  @override
  final String code;
  @override
  final String title;
  @override
  final String className;
  @override
  final String group;
  @override
  final String units;
  @override
  final String hours;
  @override
  final bool isRequired;
  final List<String> _instructors;
  @override
  List<String> get instructors {
    if (_instructors is EqualUnmodifiableListView) return _instructors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_instructors);
  }

  @override
  String toString() {
    return 'CourseData(code: $code, title: $title, className: $className, group: $group, units: $units, hours: $hours, isRequired: $isRequired, instructors: $instructors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseDataImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.units, units) || other.units == units) &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            const DeepCollectionEquality()
                .equals(other._instructors, _instructors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      title,
      className,
      group,
      units,
      hours,
      isRequired,
      const DeepCollectionEquality().hash(_instructors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseDataImplCopyWith<_$CourseDataImpl> get copyWith =>
      __$$CourseDataImplCopyWithImpl<_$CourseDataImpl>(this, _$identity);
}

abstract class _CourseData extends CourseData {
  const factory _CourseData(
      {required final String code,
      required final String title,
      required final String className,
      required final String group,
      required final String units,
      required final String hours,
      required final bool isRequired,
      required final List<String> instructors}) = _$CourseDataImpl;
  const _CourseData._() : super._();

  @override
  String get code;
  @override
  String get title;
  @override
  String get className;
  @override
  String get group;
  @override
  String get units;
  @override
  String get hours;
  @override
  bool get isRequired;
  @override
  List<String> get instructors;
  @override
  @JsonKey(ignore: true)
  _$$CourseDataImplCopyWith<_$CourseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
