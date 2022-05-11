// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loggingIn':
      return AuthStateLoggingIn.fromJson(json);
    case 'loggedIn':
      return AuthStateLoggedIn.fromJson(json);
    case 'error':
      return AuthStateError.fromJson(json);
    case 'loggedOut':
      return AuthStateLoggedOut.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AuthState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  AuthStateLoggingIn loggingIn() {
    return AuthStateLoggingIn();
  }

  AuthStateLoggedIn loggedIn(User user) {
    return AuthStateLoggedIn(
      user,
    );
  }

  AuthStateError error(String msg) {
    return AuthStateError(
      msg,
    );
  }

  AuthStateLoggedOut loggedOut() {
    return AuthStateLoggedOut();
  }

  AuthState fromJson(Map<String, Object?> json) {
    return AuthState.fromJson(json);
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggingIn,
    required TResult Function(User user) loggedIn,
    required TResult Function(String msg) error,
    required TResult Function() loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loggingIn,
    TResult Function(User user)? loggedIn,
    TResult Function(String msg)? error,
    TResult Function()? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggingIn,
    TResult Function(User user)? loggedIn,
    TResult Function(String msg)? error,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateLoggingIn value) loggingIn,
    required TResult Function(AuthStateLoggedIn value) loggedIn,
    required TResult Function(AuthStateError value) error,
    required TResult Function(AuthStateLoggedOut value) loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateLoggingIn value)? loggingIn,
    TResult Function(AuthStateLoggedIn value)? loggedIn,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateLoggedOut value)? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoggingIn value)? loggingIn,
    TResult Function(AuthStateLoggedIn value)? loggedIn,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $AuthStateLoggingInCopyWith<$Res> {
  factory $AuthStateLoggingInCopyWith(
          AuthStateLoggingIn value, $Res Function(AuthStateLoggingIn) then) =
      _$AuthStateLoggingInCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateLoggingInCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateLoggingInCopyWith<$Res> {
  _$AuthStateLoggingInCopyWithImpl(
      AuthStateLoggingIn _value, $Res Function(AuthStateLoggingIn) _then)
      : super(_value, (v) => _then(v as AuthStateLoggingIn));

  @override
  AuthStateLoggingIn get _value => super._value as AuthStateLoggingIn;
}

/// @nodoc
@JsonSerializable()
class _$AuthStateLoggingIn implements AuthStateLoggingIn {
  _$AuthStateLoggingIn({String? $type}) : $type = $type ?? 'loggingIn';

  factory _$AuthStateLoggingIn.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateLoggingInFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.loggingIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthStateLoggingIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggingIn,
    required TResult Function(User user) loggedIn,
    required TResult Function(String msg) error,
    required TResult Function() loggedOut,
  }) {
    return loggingIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loggingIn,
    TResult Function(User user)? loggedIn,
    TResult Function(String msg)? error,
    TResult Function()? loggedOut,
  }) {
    return loggingIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggingIn,
    TResult Function(User user)? loggedIn,
    TResult Function(String msg)? error,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateLoggingIn value) loggingIn,
    required TResult Function(AuthStateLoggedIn value) loggedIn,
    required TResult Function(AuthStateError value) error,
    required TResult Function(AuthStateLoggedOut value) loggedOut,
  }) {
    return loggingIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateLoggingIn value)? loggingIn,
    TResult Function(AuthStateLoggedIn value)? loggedIn,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateLoggedOut value)? loggedOut,
  }) {
    return loggingIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoggingIn value)? loggingIn,
    TResult Function(AuthStateLoggedIn value)? loggedIn,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateLoggingInToJson(this);
  }
}

abstract class AuthStateLoggingIn implements AuthState {
  factory AuthStateLoggingIn() = _$AuthStateLoggingIn;

  factory AuthStateLoggingIn.fromJson(Map<String, dynamic> json) =
      _$AuthStateLoggingIn.fromJson;
}

/// @nodoc
abstract class $AuthStateLoggedInCopyWith<$Res> {
  factory $AuthStateLoggedInCopyWith(
          AuthStateLoggedIn value, $Res Function(AuthStateLoggedIn) then) =
      _$AuthStateLoggedInCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthStateLoggedInCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateLoggedInCopyWith<$Res> {
  _$AuthStateLoggedInCopyWithImpl(
      AuthStateLoggedIn _value, $Res Function(AuthStateLoggedIn) _then)
      : super(_value, (v) => _then(v as AuthStateLoggedIn));

  @override
  AuthStateLoggedIn get _value => super._value as AuthStateLoggedIn;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AuthStateLoggedIn(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthStateLoggedIn implements AuthStateLoggedIn {
  _$AuthStateLoggedIn(this.user, {String? $type}) : $type = $type ?? 'loggedIn';

  factory _$AuthStateLoggedIn.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateLoggedInFromJson(json);

  @override
  final User user;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.loggedIn(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthStateLoggedIn &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $AuthStateLoggedInCopyWith<AuthStateLoggedIn> get copyWith =>
      _$AuthStateLoggedInCopyWithImpl<AuthStateLoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggingIn,
    required TResult Function(User user) loggedIn,
    required TResult Function(String msg) error,
    required TResult Function() loggedOut,
  }) {
    return loggedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loggingIn,
    TResult Function(User user)? loggedIn,
    TResult Function(String msg)? error,
    TResult Function()? loggedOut,
  }) {
    return loggedIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggingIn,
    TResult Function(User user)? loggedIn,
    TResult Function(String msg)? error,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateLoggingIn value) loggingIn,
    required TResult Function(AuthStateLoggedIn value) loggedIn,
    required TResult Function(AuthStateError value) error,
    required TResult Function(AuthStateLoggedOut value) loggedOut,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateLoggingIn value)? loggingIn,
    TResult Function(AuthStateLoggedIn value)? loggedIn,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateLoggedOut value)? loggedOut,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoggingIn value)? loggingIn,
    TResult Function(AuthStateLoggedIn value)? loggedIn,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateLoggedInToJson(this);
  }
}

abstract class AuthStateLoggedIn implements AuthState {
  factory AuthStateLoggedIn(User user) = _$AuthStateLoggedIn;

  factory AuthStateLoggedIn.fromJson(Map<String, dynamic> json) =
      _$AuthStateLoggedIn.fromJson;

  User get user;
  @JsonKey(ignore: true)
  $AuthStateLoggedInCopyWith<AuthStateLoggedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateErrorCopyWith<$Res> {
  factory $AuthStateErrorCopyWith(
          AuthStateError value, $Res Function(AuthStateError) then) =
      _$AuthStateErrorCopyWithImpl<$Res>;
  $Res call({String msg});
}

/// @nodoc
class _$AuthStateErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateErrorCopyWith<$Res> {
  _$AuthStateErrorCopyWithImpl(
      AuthStateError _value, $Res Function(AuthStateError) _then)
      : super(_value, (v) => _then(v as AuthStateError));

  @override
  AuthStateError get _value => super._value as AuthStateError;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(AuthStateError(
      msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthStateError implements AuthStateError {
  _$AuthStateError(this.msg, {String? $type}) : $type = $type ?? 'error';

  factory _$AuthStateError.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateErrorFromJson(json);

  @override
  final String msg;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthStateError &&
            const DeepCollectionEquality().equals(other.msg, msg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(msg));

  @JsonKey(ignore: true)
  @override
  $AuthStateErrorCopyWith<AuthStateError> get copyWith =>
      _$AuthStateErrorCopyWithImpl<AuthStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggingIn,
    required TResult Function(User user) loggedIn,
    required TResult Function(String msg) error,
    required TResult Function() loggedOut,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loggingIn,
    TResult Function(User user)? loggedIn,
    TResult Function(String msg)? error,
    TResult Function()? loggedOut,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggingIn,
    TResult Function(User user)? loggedIn,
    TResult Function(String msg)? error,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateLoggingIn value) loggingIn,
    required TResult Function(AuthStateLoggedIn value) loggedIn,
    required TResult Function(AuthStateError value) error,
    required TResult Function(AuthStateLoggedOut value) loggedOut,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateLoggingIn value)? loggingIn,
    TResult Function(AuthStateLoggedIn value)? loggedIn,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateLoggedOut value)? loggedOut,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoggingIn value)? loggingIn,
    TResult Function(AuthStateLoggedIn value)? loggedIn,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateErrorToJson(this);
  }
}

abstract class AuthStateError implements AuthState {
  factory AuthStateError(String msg) = _$AuthStateError;

  factory AuthStateError.fromJson(Map<String, dynamic> json) =
      _$AuthStateError.fromJson;

  String get msg;
  @JsonKey(ignore: true)
  $AuthStateErrorCopyWith<AuthStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateLoggedOutCopyWith<$Res> {
  factory $AuthStateLoggedOutCopyWith(
          AuthStateLoggedOut value, $Res Function(AuthStateLoggedOut) then) =
      _$AuthStateLoggedOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateLoggedOutCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateLoggedOutCopyWith<$Res> {
  _$AuthStateLoggedOutCopyWithImpl(
      AuthStateLoggedOut _value, $Res Function(AuthStateLoggedOut) _then)
      : super(_value, (v) => _then(v as AuthStateLoggedOut));

  @override
  AuthStateLoggedOut get _value => super._value as AuthStateLoggedOut;
}

/// @nodoc
@JsonSerializable()
class _$AuthStateLoggedOut implements AuthStateLoggedOut {
  _$AuthStateLoggedOut({String? $type}) : $type = $type ?? 'loggedOut';

  factory _$AuthStateLoggedOut.fromJson(Map<String, dynamic> json) =>
      _$$AuthStateLoggedOutFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.loggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthStateLoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loggingIn,
    required TResult Function(User user) loggedIn,
    required TResult Function(String msg) error,
    required TResult Function() loggedOut,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loggingIn,
    TResult Function(User user)? loggedIn,
    TResult Function(String msg)? error,
    TResult Function()? loggedOut,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loggingIn,
    TResult Function(User user)? loggedIn,
    TResult Function(String msg)? error,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateLoggingIn value) loggingIn,
    required TResult Function(AuthStateLoggedIn value) loggedIn,
    required TResult Function(AuthStateError value) error,
    required TResult Function(AuthStateLoggedOut value) loggedOut,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStateLoggingIn value)? loggingIn,
    TResult Function(AuthStateLoggedIn value)? loggedIn,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateLoggedOut value)? loggedOut,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateLoggingIn value)? loggingIn,
    TResult Function(AuthStateLoggedIn value)? loggedIn,
    TResult Function(AuthStateError value)? error,
    TResult Function(AuthStateLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStateLoggedOutToJson(this);
  }
}

abstract class AuthStateLoggedOut implements AuthState {
  factory AuthStateLoggedOut() = _$AuthStateLoggedOut;

  factory AuthStateLoggedOut.fromJson(Map<String, dynamic> json) =
      _$AuthStateLoggedOut.fromJson;
}
