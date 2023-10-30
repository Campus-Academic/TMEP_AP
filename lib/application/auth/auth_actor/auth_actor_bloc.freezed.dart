// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserData userData) loggedIn,
    required TResult Function(AuthFailure failure) loginFailed,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserData userData)? loggedIn,
    TResult? Function(AuthFailure failure)? loginFailed,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserData userData)? loggedIn,
    TResult Function(AuthFailure failure)? loginFailed,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_SignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_SignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthActorEventCopyWith<$Res> {
  factory $AuthActorEventCopyWith(
          AuthActorEvent value, $Res Function(AuthActorEvent) then) =
      _$AuthActorEventCopyWithImpl<$Res, AuthActorEvent>;
}

/// @nodoc
class _$AuthActorEventCopyWithImpl<$Res, $Val extends AuthActorEvent>
    implements $AuthActorEventCopyWith<$Res> {
  _$AuthActorEventCopyWithImpl(this._value, this._then);

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
    extends _$AuthActorEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthActorEvent.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthActorEvent.initial'));
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
    required TResult Function(UserData userData) loggedIn,
    required TResult Function(AuthFailure failure) loginFailed,
    required TResult Function() signOut,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserData userData)? loggedIn,
    TResult? Function(AuthFailure failure)? loginFailed,
    TResult? Function()? signOut,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserData userData)? loggedIn,
    TResult Function(AuthFailure failure)? loginFailed,
    TResult Function()? signOut,
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
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_SignOut value) signOut,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthActorEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoggedInImplCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserData userData});
}

/// @nodoc
class __$$LoggedInImplCopyWithImpl<$Res>
    extends _$AuthActorEventCopyWithImpl<$Res, _$LoggedInImpl>
    implements _$$LoggedInImplCopyWith<$Res> {
  __$$LoggedInImplCopyWithImpl(
      _$LoggedInImpl _value, $Res Function(_$LoggedInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
  }) {
    return _then(_$LoggedInImpl(
      null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }
}

/// @nodoc

class _$LoggedInImpl with DiagnosticableTreeMixin implements _LoggedIn {
  const _$LoggedInImpl(this.userData);

  @override
  final UserData userData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthActorEvent.loggedIn(userData: $userData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthActorEvent.loggedIn'))
      ..add(DiagnosticsProperty('userData', userData));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedInImpl &&
            (identical(other.userData, userData) ||
                other.userData == userData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      __$$LoggedInImplCopyWithImpl<_$LoggedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserData userData) loggedIn,
    required TResult Function(AuthFailure failure) loginFailed,
    required TResult Function() signOut,
  }) {
    return loggedIn(userData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserData userData)? loggedIn,
    TResult? Function(AuthFailure failure)? loginFailed,
    TResult? Function()? signOut,
  }) {
    return loggedIn?.call(userData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserData userData)? loggedIn,
    TResult Function(AuthFailure failure)? loginFailed,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(userData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_SignOut value) signOut,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn implements AuthActorEvent {
  const factory _LoggedIn(final UserData userData) = _$LoggedInImpl;

  UserData get userData;
  @JsonKey(ignore: true)
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginFailedImplCopyWith<$Res> {
  factory _$$LoginFailedImplCopyWith(
          _$LoginFailedImpl value, $Res Function(_$LoginFailedImpl) then) =
      __$$LoginFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthFailure failure});
}

/// @nodoc
class __$$LoginFailedImplCopyWithImpl<$Res>
    extends _$AuthActorEventCopyWithImpl<$Res, _$LoginFailedImpl>
    implements _$$LoginFailedImplCopyWith<$Res> {
  __$$LoginFailedImplCopyWithImpl(
      _$LoginFailedImpl _value, $Res Function(_$LoginFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$LoginFailedImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthFailure,
    ));
  }
}

/// @nodoc

class _$LoginFailedImpl with DiagnosticableTreeMixin implements _LoginFailed {
  const _$LoginFailedImpl(this.failure);

  @override
  final AuthFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthActorEvent.loginFailed(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthActorEvent.loginFailed'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFailedImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFailedImplCopyWith<_$LoginFailedImpl> get copyWith =>
      __$$LoginFailedImplCopyWithImpl<_$LoginFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserData userData) loggedIn,
    required TResult Function(AuthFailure failure) loginFailed,
    required TResult Function() signOut,
  }) {
    return loginFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserData userData)? loggedIn,
    TResult? Function(AuthFailure failure)? loginFailed,
    TResult? Function()? signOut,
  }) {
    return loginFailed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserData userData)? loggedIn,
    TResult Function(AuthFailure failure)? loginFailed,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_SignOut value) signOut,
  }) {
    return loginFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return loginFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(this);
    }
    return orElse();
  }
}

abstract class _LoginFailed implements AuthActorEvent {
  const factory _LoginFailed(final AuthFailure failure) = _$LoginFailedImpl;

  AuthFailure get failure;
  @JsonKey(ignore: true)
  _$$LoginFailedImplCopyWith<_$LoginFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$AuthActorEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutImpl with DiagnosticableTreeMixin implements _SignOut {
  const _$SignOutImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthActorEvent.signOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthActorEvent.signOut'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserData userData) loggedIn,
    required TResult Function(AuthFailure failure) loginFailed,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserData userData)? loggedIn,
    TResult? Function(AuthFailure failure)? loginFailed,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserData userData)? loggedIn,
    TResult Function(AuthFailure failure)? loginFailed,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoginFailed value) loginFailed,
    required TResult Function(_SignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoginFailed value)? loginFailed,
    TResult? Function(_SignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoginFailed value)? loginFailed,
    TResult Function(_SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthActorEvent {
  const factory _SignOut() = _$SignOutImpl;
}

/// @nodoc
mixin _$AuthActorState {
  UserData get user => throw _privateConstructorUsedError;
  Option<AuthFailure> get failureOption => throw _privateConstructorUsedError;
  LoadStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthActorStateCopyWith<AuthActorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthActorStateCopyWith<$Res> {
  factory $AuthActorStateCopyWith(
          AuthActorState value, $Res Function(AuthActorState) then) =
      _$AuthActorStateCopyWithImpl<$Res, AuthActorState>;
  @useResult
  $Res call(
      {UserData user, Option<AuthFailure> failureOption, LoadStatus status});
}

/// @nodoc
class _$AuthActorStateCopyWithImpl<$Res, $Val extends AuthActorState>
    implements $AuthActorStateCopyWith<$Res> {
  _$AuthActorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? failureOption = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<AuthFailure>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthActorStateImplCopyWith<$Res>
    implements $AuthActorStateCopyWith<$Res> {
  factory _$$AuthActorStateImplCopyWith(_$AuthActorStateImpl value,
          $Res Function(_$AuthActorStateImpl) then) =
      __$$AuthActorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserData user, Option<AuthFailure> failureOption, LoadStatus status});
}

/// @nodoc
class __$$AuthActorStateImplCopyWithImpl<$Res>
    extends _$AuthActorStateCopyWithImpl<$Res, _$AuthActorStateImpl>
    implements _$$AuthActorStateImplCopyWith<$Res> {
  __$$AuthActorStateImplCopyWithImpl(
      _$AuthActorStateImpl _value, $Res Function(_$AuthActorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? failureOption = null,
    Object? status = null,
  }) {
    return _then(_$AuthActorStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<AuthFailure>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
    ));
  }
}

/// @nodoc

class _$AuthActorStateImpl
    with DiagnosticableTreeMixin
    implements _AuthActorState {
  const _$AuthActorStateImpl(
      {required this.user, required this.failureOption, required this.status});

  @override
  final UserData user;
  @override
  final Option<AuthFailure> failureOption;
  @override
  final LoadStatus status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthActorState._(user: $user, failureOption: $failureOption, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthActorState._'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('failureOption', failureOption))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthActorStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.failureOption, failureOption) ||
                other.failureOption == failureOption) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, failureOption, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthActorStateImplCopyWith<_$AuthActorStateImpl> get copyWith =>
      __$$AuthActorStateImplCopyWithImpl<_$AuthActorStateImpl>(
          this, _$identity);
}

abstract class _AuthActorState implements AuthActorState {
  const factory _AuthActorState(
      {required final UserData user,
      required final Option<AuthFailure> failureOption,
      required final LoadStatus status}) = _$AuthActorStateImpl;

  @override
  UserData get user;
  @override
  Option<AuthFailure> get failureOption;
  @override
  LoadStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$AuthActorStateImplCopyWith<_$AuthActorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
