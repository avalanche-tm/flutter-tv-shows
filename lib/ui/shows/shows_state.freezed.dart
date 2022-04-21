// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shows_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShowsState _$ShowsStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loading':
      return ShowsStateLoading.fromJson(json);
    case 'loaded':
      return ShowsStateLoaded.fromJson(json);
    case 'error':
      return ShowsStateError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ShowsState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ShowsStateTearOff {
  const _$ShowsStateTearOff();

  ShowsStateLoading loading(List<Show> shows) {
    return ShowsStateLoading(
      shows,
    );
  }

  ShowsStateLoaded loaded(List<Show> shows) {
    return ShowsStateLoaded(
      shows,
    );
  }

  ShowsStateError error(String msg, List<Show> shows) {
    return ShowsStateError(
      msg,
      shows,
    );
  }

  ShowsState fromJson(Map<String, Object?> json) {
    return ShowsState.fromJson(json);
  }
}

/// @nodoc
const $ShowsState = _$ShowsStateTearOff();

/// @nodoc
mixin _$ShowsState {
  List<Show> get shows => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Show> shows) loading,
    required TResult Function(List<Show> shows) loaded,
    required TResult Function(String msg, List<Show> shows) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Show> shows)? loading,
    TResult Function(List<Show> shows)? loaded,
    TResult Function(String msg, List<Show> shows)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Show> shows)? loading,
    TResult Function(List<Show> shows)? loaded,
    TResult Function(String msg, List<Show> shows)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowsStateLoading value) loading,
    required TResult Function(ShowsStateLoaded value) loaded,
    required TResult Function(ShowsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowsStateLoading value)? loading,
    TResult Function(ShowsStateLoaded value)? loaded,
    TResult Function(ShowsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowsStateLoading value)? loading,
    TResult Function(ShowsStateLoaded value)? loaded,
    TResult Function(ShowsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowsStateCopyWith<ShowsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowsStateCopyWith<$Res> {
  factory $ShowsStateCopyWith(
          ShowsState value, $Res Function(ShowsState) then) =
      _$ShowsStateCopyWithImpl<$Res>;
  $Res call({List<Show> shows});
}

/// @nodoc
class _$ShowsStateCopyWithImpl<$Res> implements $ShowsStateCopyWith<$Res> {
  _$ShowsStateCopyWithImpl(this._value, this._then);

  final ShowsState _value;
  // ignore: unused_field
  final $Res Function(ShowsState) _then;

  @override
  $Res call({
    Object? shows = freezed,
  }) {
    return _then(_value.copyWith(
      shows: shows == freezed
          ? _value.shows
          : shows // ignore: cast_nullable_to_non_nullable
              as List<Show>,
    ));
  }
}

/// @nodoc
abstract class $ShowsStateLoadingCopyWith<$Res>
    implements $ShowsStateCopyWith<$Res> {
  factory $ShowsStateLoadingCopyWith(
          ShowsStateLoading value, $Res Function(ShowsStateLoading) then) =
      _$ShowsStateLoadingCopyWithImpl<$Res>;
  @override
  $Res call({List<Show> shows});
}

/// @nodoc
class _$ShowsStateLoadingCopyWithImpl<$Res>
    extends _$ShowsStateCopyWithImpl<$Res>
    implements $ShowsStateLoadingCopyWith<$Res> {
  _$ShowsStateLoadingCopyWithImpl(
      ShowsStateLoading _value, $Res Function(ShowsStateLoading) _then)
      : super(_value, (v) => _then(v as ShowsStateLoading));

  @override
  ShowsStateLoading get _value => super._value as ShowsStateLoading;

  @override
  $Res call({
    Object? shows = freezed,
  }) {
    return _then(ShowsStateLoading(
      shows == freezed
          ? _value.shows
          : shows // ignore: cast_nullable_to_non_nullable
              as List<Show>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShowsStateLoading implements ShowsStateLoading {
  _$ShowsStateLoading(this.shows, {String? $type}) : $type = $type ?? 'loading';

  factory _$ShowsStateLoading.fromJson(Map<String, dynamic> json) =>
      _$$ShowsStateLoadingFromJson(json);

  @override
  final List<Show> shows;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ShowsState.loading(shows: $shows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowsStateLoading &&
            const DeepCollectionEquality().equals(other.shows, shows));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(shows));

  @JsonKey(ignore: true)
  @override
  $ShowsStateLoadingCopyWith<ShowsStateLoading> get copyWith =>
      _$ShowsStateLoadingCopyWithImpl<ShowsStateLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Show> shows) loading,
    required TResult Function(List<Show> shows) loaded,
    required TResult Function(String msg, List<Show> shows) error,
  }) {
    return loading(shows);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Show> shows)? loading,
    TResult Function(List<Show> shows)? loaded,
    TResult Function(String msg, List<Show> shows)? error,
  }) {
    return loading?.call(shows);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Show> shows)? loading,
    TResult Function(List<Show> shows)? loaded,
    TResult Function(String msg, List<Show> shows)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(shows);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowsStateLoading value) loading,
    required TResult Function(ShowsStateLoaded value) loaded,
    required TResult Function(ShowsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowsStateLoading value)? loading,
    TResult Function(ShowsStateLoaded value)? loaded,
    TResult Function(ShowsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowsStateLoading value)? loading,
    TResult Function(ShowsStateLoaded value)? loaded,
    TResult Function(ShowsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowsStateLoadingToJson(this);
  }
}

abstract class ShowsStateLoading implements ShowsState {
  factory ShowsStateLoading(List<Show> shows) = _$ShowsStateLoading;

  factory ShowsStateLoading.fromJson(Map<String, dynamic> json) =
      _$ShowsStateLoading.fromJson;

  @override
  List<Show> get shows;
  @override
  @JsonKey(ignore: true)
  $ShowsStateLoadingCopyWith<ShowsStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowsStateLoadedCopyWith<$Res>
    implements $ShowsStateCopyWith<$Res> {
  factory $ShowsStateLoadedCopyWith(
          ShowsStateLoaded value, $Res Function(ShowsStateLoaded) then) =
      _$ShowsStateLoadedCopyWithImpl<$Res>;
  @override
  $Res call({List<Show> shows});
}

/// @nodoc
class _$ShowsStateLoadedCopyWithImpl<$Res>
    extends _$ShowsStateCopyWithImpl<$Res>
    implements $ShowsStateLoadedCopyWith<$Res> {
  _$ShowsStateLoadedCopyWithImpl(
      ShowsStateLoaded _value, $Res Function(ShowsStateLoaded) _then)
      : super(_value, (v) => _then(v as ShowsStateLoaded));

  @override
  ShowsStateLoaded get _value => super._value as ShowsStateLoaded;

  @override
  $Res call({
    Object? shows = freezed,
  }) {
    return _then(ShowsStateLoaded(
      shows == freezed
          ? _value.shows
          : shows // ignore: cast_nullable_to_non_nullable
              as List<Show>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShowsStateLoaded implements ShowsStateLoaded {
  _$ShowsStateLoaded(this.shows, {String? $type}) : $type = $type ?? 'loaded';

  factory _$ShowsStateLoaded.fromJson(Map<String, dynamic> json) =>
      _$$ShowsStateLoadedFromJson(json);

  @override
  final List<Show> shows;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ShowsState.loaded(shows: $shows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowsStateLoaded &&
            const DeepCollectionEquality().equals(other.shows, shows));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(shows));

  @JsonKey(ignore: true)
  @override
  $ShowsStateLoadedCopyWith<ShowsStateLoaded> get copyWith =>
      _$ShowsStateLoadedCopyWithImpl<ShowsStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Show> shows) loading,
    required TResult Function(List<Show> shows) loaded,
    required TResult Function(String msg, List<Show> shows) error,
  }) {
    return loaded(shows);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Show> shows)? loading,
    TResult Function(List<Show> shows)? loaded,
    TResult Function(String msg, List<Show> shows)? error,
  }) {
    return loaded?.call(shows);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Show> shows)? loading,
    TResult Function(List<Show> shows)? loaded,
    TResult Function(String msg, List<Show> shows)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(shows);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowsStateLoading value) loading,
    required TResult Function(ShowsStateLoaded value) loaded,
    required TResult Function(ShowsStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowsStateLoading value)? loading,
    TResult Function(ShowsStateLoaded value)? loaded,
    TResult Function(ShowsStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowsStateLoading value)? loading,
    TResult Function(ShowsStateLoaded value)? loaded,
    TResult Function(ShowsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowsStateLoadedToJson(this);
  }
}

abstract class ShowsStateLoaded implements ShowsState {
  factory ShowsStateLoaded(List<Show> shows) = _$ShowsStateLoaded;

  factory ShowsStateLoaded.fromJson(Map<String, dynamic> json) =
      _$ShowsStateLoaded.fromJson;

  @override
  List<Show> get shows;
  @override
  @JsonKey(ignore: true)
  $ShowsStateLoadedCopyWith<ShowsStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowsStateErrorCopyWith<$Res>
    implements $ShowsStateCopyWith<$Res> {
  factory $ShowsStateErrorCopyWith(
          ShowsStateError value, $Res Function(ShowsStateError) then) =
      _$ShowsStateErrorCopyWithImpl<$Res>;
  @override
  $Res call({String msg, List<Show> shows});
}

/// @nodoc
class _$ShowsStateErrorCopyWithImpl<$Res> extends _$ShowsStateCopyWithImpl<$Res>
    implements $ShowsStateErrorCopyWith<$Res> {
  _$ShowsStateErrorCopyWithImpl(
      ShowsStateError _value, $Res Function(ShowsStateError) _then)
      : super(_value, (v) => _then(v as ShowsStateError));

  @override
  ShowsStateError get _value => super._value as ShowsStateError;

  @override
  $Res call({
    Object? msg = freezed,
    Object? shows = freezed,
  }) {
    return _then(ShowsStateError(
      msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      shows == freezed
          ? _value.shows
          : shows // ignore: cast_nullable_to_non_nullable
              as List<Show>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShowsStateError implements ShowsStateError {
  _$ShowsStateError(this.msg, this.shows, {String? $type})
      : $type = $type ?? 'error';

  factory _$ShowsStateError.fromJson(Map<String, dynamic> json) =>
      _$$ShowsStateErrorFromJson(json);

  @override
  final String msg;
  @override
  final List<Show> shows;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ShowsState.error(msg: $msg, shows: $shows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowsStateError &&
            const DeepCollectionEquality().equals(other.msg, msg) &&
            const DeepCollectionEquality().equals(other.shows, shows));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(msg),
      const DeepCollectionEquality().hash(shows));

  @JsonKey(ignore: true)
  @override
  $ShowsStateErrorCopyWith<ShowsStateError> get copyWith =>
      _$ShowsStateErrorCopyWithImpl<ShowsStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Show> shows) loading,
    required TResult Function(List<Show> shows) loaded,
    required TResult Function(String msg, List<Show> shows) error,
  }) {
    return error(msg, shows);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Show> shows)? loading,
    TResult Function(List<Show> shows)? loaded,
    TResult Function(String msg, List<Show> shows)? error,
  }) {
    return error?.call(msg, shows);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Show> shows)? loading,
    TResult Function(List<Show> shows)? loaded,
    TResult Function(String msg, List<Show> shows)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg, shows);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowsStateLoading value) loading,
    required TResult Function(ShowsStateLoaded value) loaded,
    required TResult Function(ShowsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowsStateLoading value)? loading,
    TResult Function(ShowsStateLoaded value)? loaded,
    TResult Function(ShowsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowsStateLoading value)? loading,
    TResult Function(ShowsStateLoaded value)? loaded,
    TResult Function(ShowsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowsStateErrorToJson(this);
  }
}

abstract class ShowsStateError implements ShowsState {
  factory ShowsStateError(String msg, List<Show> shows) = _$ShowsStateError;

  factory ShowsStateError.fromJson(Map<String, dynamic> json) =
      _$ShowsStateError.fromJson;

  String get msg;
  @override
  List<Show> get shows;
  @override
  @JsonKey(ignore: true)
  $ShowsStateErrorCopyWith<ShowsStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
