// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc_w_freezed_example_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthBlocWFreezedExampleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String userAccount, String userPassword) signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String userAccount, String userPassword)? signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String userAccount, String userPassword)? signIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignIn value) signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignIn value)? signIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignIn value)? signIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthBlocWFreezedExampleEventCopyWith<$Res> {
  factory $AuthBlocWFreezedExampleEventCopyWith(
          AuthBlocWFreezedExampleEvent value,
          $Res Function(AuthBlocWFreezedExampleEvent) then) =
      _$AuthBlocWFreezedExampleEventCopyWithImpl<$Res,
          AuthBlocWFreezedExampleEvent>;
}

/// @nodoc
class _$AuthBlocWFreezedExampleEventCopyWithImpl<$Res,
        $Val extends AuthBlocWFreezedExampleEvent>
    implements $AuthBlocWFreezedExampleEventCopyWith<$Res> {
  _$AuthBlocWFreezedExampleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthBlocWFreezedExampleEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthBlocWFreezedExampleEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String userAccount, String userPassword) signIn,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String userAccount, String userPassword)? signIn,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String userAccount, String userPassword)? signIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignIn value) signIn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignIn value)? signIn,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthBlocWFreezedExampleEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SignInImplCopyWith<$Res> {
  factory _$$SignInImplCopyWith(
          _$SignInImpl value, $Res Function(_$SignInImpl) then) =
      __$$SignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userAccount, String userPassword});
}

/// @nodoc
class __$$SignInImplCopyWithImpl<$Res>
    extends _$AuthBlocWFreezedExampleEventCopyWithImpl<$Res, _$SignInImpl>
    implements _$$SignInImplCopyWith<$Res> {
  __$$SignInImplCopyWithImpl(
      _$SignInImpl _value, $Res Function(_$SignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAccount = null,
    Object? userPassword = null,
  }) {
    return _then(_$SignInImpl(
      userAccount: null == userAccount
          ? _value.userAccount
          : userAccount // ignore: cast_nullable_to_non_nullable
              as String,
      userPassword: null == userPassword
          ? _value.userPassword
          : userPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInImpl implements _SignIn {
  const _$SignInImpl({required this.userAccount, required this.userPassword});

  @override
  final String userAccount;
  @override
  final String userPassword;

  @override
  String toString() {
    return 'AuthBlocWFreezedExampleEvent.signIn(userAccount: $userAccount, userPassword: $userPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInImpl &&
            (identical(other.userAccount, userAccount) ||
                other.userAccount == userAccount) &&
            (identical(other.userPassword, userPassword) ||
                other.userPassword == userPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userAccount, userPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      __$$SignInImplCopyWithImpl<_$SignInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String userAccount, String userPassword) signIn,
  }) {
    return signIn(userAccount, userPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String userAccount, String userPassword)? signIn,
  }) {
    return signIn?.call(userAccount, userPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String userAccount, String userPassword)? signIn,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(userAccount, userPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignIn value) signIn,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SignIn value)? signIn,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignIn value)? signIn,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn implements AuthBlocWFreezedExampleEvent {
  const factory _SignIn(
      {required final String userAccount,
      required final String userPassword}) = _$SignInImpl;

  String get userAccount;
  String get userPassword;
  @JsonKey(ignore: true)
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthBlocWFreezedExampleState {
  bool get isSignedIn => throw _privateConstructorUsedError;
  LoadStatus get loadStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthBlocWFreezedExampleStateCopyWith<AuthBlocWFreezedExampleState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthBlocWFreezedExampleStateCopyWith<$Res> {
  factory $AuthBlocWFreezedExampleStateCopyWith(
          AuthBlocWFreezedExampleState value,
          $Res Function(AuthBlocWFreezedExampleState) then) =
      _$AuthBlocWFreezedExampleStateCopyWithImpl<$Res,
          AuthBlocWFreezedExampleState>;
  @useResult
  $Res call({bool isSignedIn, LoadStatus loadStatus});
}

/// @nodoc
class _$AuthBlocWFreezedExampleStateCopyWithImpl<$Res,
        $Val extends AuthBlocWFreezedExampleState>
    implements $AuthBlocWFreezedExampleStateCopyWith<$Res> {
  _$AuthBlocWFreezedExampleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSignedIn = null,
    Object? loadStatus = null,
  }) {
    return _then(_value.copyWith(
      isSignedIn: null == isSignedIn
          ? _value.isSignedIn
          : isSignedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      loadStatus: null == loadStatus
          ? _value.loadStatus
          : loadStatus // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthBlocWFreezedExampleStateImplCopyWith<$Res>
    implements $AuthBlocWFreezedExampleStateCopyWith<$Res> {
  factory _$$AuthBlocWFreezedExampleStateImplCopyWith(
          _$AuthBlocWFreezedExampleStateImpl value,
          $Res Function(_$AuthBlocWFreezedExampleStateImpl) then) =
      __$$AuthBlocWFreezedExampleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSignedIn, LoadStatus loadStatus});
}

/// @nodoc
class __$$AuthBlocWFreezedExampleStateImplCopyWithImpl<$Res>
    extends _$AuthBlocWFreezedExampleStateCopyWithImpl<$Res,
        _$AuthBlocWFreezedExampleStateImpl>
    implements _$$AuthBlocWFreezedExampleStateImplCopyWith<$Res> {
  __$$AuthBlocWFreezedExampleStateImplCopyWithImpl(
      _$AuthBlocWFreezedExampleStateImpl _value,
      $Res Function(_$AuthBlocWFreezedExampleStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSignedIn = null,
    Object? loadStatus = null,
  }) {
    return _then(_$AuthBlocWFreezedExampleStateImpl(
      isSignedIn: null == isSignedIn
          ? _value.isSignedIn
          : isSignedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      loadStatus: null == loadStatus
          ? _value.loadStatus
          : loadStatus // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
    ));
  }
}

/// @nodoc

class _$AuthBlocWFreezedExampleStateImpl extends _AuthBlocWFreezedExampleState {
  const _$AuthBlocWFreezedExampleStateImpl(
      {required this.isSignedIn, required this.loadStatus})
      : super._();

  @override
  final bool isSignedIn;
  @override
  final LoadStatus loadStatus;

  @override
  String toString() {
    return 'AuthBlocWFreezedExampleState(isSignedIn: $isSignedIn, loadStatus: $loadStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthBlocWFreezedExampleStateImpl &&
            (identical(other.isSignedIn, isSignedIn) ||
                other.isSignedIn == isSignedIn) &&
            (identical(other.loadStatus, loadStatus) ||
                other.loadStatus == loadStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSignedIn, loadStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthBlocWFreezedExampleStateImplCopyWith<
          _$AuthBlocWFreezedExampleStateImpl>
      get copyWith => __$$AuthBlocWFreezedExampleStateImplCopyWithImpl<
          _$AuthBlocWFreezedExampleStateImpl>(this, _$identity);
}

abstract class _AuthBlocWFreezedExampleState
    extends AuthBlocWFreezedExampleState {
  const factory _AuthBlocWFreezedExampleState(
          {required final bool isSignedIn,
          required final LoadStatus loadStatus}) =
      _$AuthBlocWFreezedExampleStateImpl;
  const _AuthBlocWFreezedExampleState._() : super._();

  @override
  bool get isSignedIn;
  @override
  LoadStatus get loadStatus;
  @override
  @JsonKey(ignore: true)
  _$$AuthBlocWFreezedExampleStateImplCopyWith<
          _$AuthBlocWFreezedExampleStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
