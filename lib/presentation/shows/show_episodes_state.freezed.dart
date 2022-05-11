// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'show_episodes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShowEpisodesState _$ShowEpisodesStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loading':
      return _ShowEpisodesStateLoading.fromJson(json);
    case 'data':
      return _ShowEpisodesStateData.fromJson(json);
    case 'error':
      return _ShowEpisodesStateError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ShowEpisodesState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ShowEpisodesStateTearOff {
  const _$ShowEpisodesStateTearOff();

  _ShowEpisodesStateLoading loading(List<ShowEpisode> episodes) {
    return _ShowEpisodesStateLoading(
      episodes,
    );
  }

  _ShowEpisodesStateData data(List<ShowEpisode> episodes) {
    return _ShowEpisodesStateData(
      episodes,
    );
  }

  _ShowEpisodesStateError error(String errorMsg, List<ShowEpisode> episodes) {
    return _ShowEpisodesStateError(
      errorMsg,
      episodes,
    );
  }

  ShowEpisodesState fromJson(Map<String, Object?> json) {
    return ShowEpisodesState.fromJson(json);
  }
}

/// @nodoc
const $ShowEpisodesState = _$ShowEpisodesStateTearOff();

/// @nodoc
mixin _$ShowEpisodesState {
  List<ShowEpisode> get episodes => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ShowEpisode> episodes) loading,
    required TResult Function(List<ShowEpisode> episodes) data,
    required TResult Function(String errorMsg, List<ShowEpisode> episodes)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ShowEpisode> episodes)? loading,
    TResult Function(List<ShowEpisode> episodes)? data,
    TResult Function(String errorMsg, List<ShowEpisode> episodes)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ShowEpisode> episodes)? loading,
    TResult Function(List<ShowEpisode> episodes)? data,
    TResult Function(String errorMsg, List<ShowEpisode> episodes)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowEpisodesStateLoading value) loading,
    required TResult Function(_ShowEpisodesStateData value) data,
    required TResult Function(_ShowEpisodesStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ShowEpisodesStateLoading value)? loading,
    TResult Function(_ShowEpisodesStateData value)? data,
    TResult Function(_ShowEpisodesStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowEpisodesStateLoading value)? loading,
    TResult Function(_ShowEpisodesStateData value)? data,
    TResult Function(_ShowEpisodesStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowEpisodesStateCopyWith<ShowEpisodesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowEpisodesStateCopyWith<$Res> {
  factory $ShowEpisodesStateCopyWith(
          ShowEpisodesState value, $Res Function(ShowEpisodesState) then) =
      _$ShowEpisodesStateCopyWithImpl<$Res>;
  $Res call({List<ShowEpisode> episodes});
}

/// @nodoc
class _$ShowEpisodesStateCopyWithImpl<$Res>
    implements $ShowEpisodesStateCopyWith<$Res> {
  _$ShowEpisodesStateCopyWithImpl(this._value, this._then);

  final ShowEpisodesState _value;
  // ignore: unused_field
  final $Res Function(ShowEpisodesState) _then;

  @override
  $Res call({
    Object? episodes = freezed,
  }) {
    return _then(_value.copyWith(
      episodes: episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<ShowEpisode>,
    ));
  }
}

/// @nodoc
abstract class _$ShowEpisodesStateLoadingCopyWith<$Res>
    implements $ShowEpisodesStateCopyWith<$Res> {
  factory _$ShowEpisodesStateLoadingCopyWith(_ShowEpisodesStateLoading value,
          $Res Function(_ShowEpisodesStateLoading) then) =
      __$ShowEpisodesStateLoadingCopyWithImpl<$Res>;
  @override
  $Res call({List<ShowEpisode> episodes});
}

/// @nodoc
class __$ShowEpisodesStateLoadingCopyWithImpl<$Res>
    extends _$ShowEpisodesStateCopyWithImpl<$Res>
    implements _$ShowEpisodesStateLoadingCopyWith<$Res> {
  __$ShowEpisodesStateLoadingCopyWithImpl(_ShowEpisodesStateLoading _value,
      $Res Function(_ShowEpisodesStateLoading) _then)
      : super(_value, (v) => _then(v as _ShowEpisodesStateLoading));

  @override
  _ShowEpisodesStateLoading get _value =>
      super._value as _ShowEpisodesStateLoading;

  @override
  $Res call({
    Object? episodes = freezed,
  }) {
    return _then(_ShowEpisodesStateLoading(
      episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<ShowEpisode>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShowEpisodesStateLoading implements _ShowEpisodesStateLoading {
  _$_ShowEpisodesStateLoading(this.episodes, {String? $type})
      : $type = $type ?? 'loading';

  factory _$_ShowEpisodesStateLoading.fromJson(Map<String, dynamic> json) =>
      _$$_ShowEpisodesStateLoadingFromJson(json);

  @override
  final List<ShowEpisode> episodes;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ShowEpisodesState.loading(episodes: $episodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShowEpisodesStateLoading &&
            const DeepCollectionEquality().equals(other.episodes, episodes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(episodes));

  @JsonKey(ignore: true)
  @override
  _$ShowEpisodesStateLoadingCopyWith<_ShowEpisodesStateLoading> get copyWith =>
      __$ShowEpisodesStateLoadingCopyWithImpl<_ShowEpisodesStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ShowEpisode> episodes) loading,
    required TResult Function(List<ShowEpisode> episodes) data,
    required TResult Function(String errorMsg, List<ShowEpisode> episodes)
        error,
  }) {
    return loading(episodes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ShowEpisode> episodes)? loading,
    TResult Function(List<ShowEpisode> episodes)? data,
    TResult Function(String errorMsg, List<ShowEpisode> episodes)? error,
  }) {
    return loading?.call(episodes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ShowEpisode> episodes)? loading,
    TResult Function(List<ShowEpisode> episodes)? data,
    TResult Function(String errorMsg, List<ShowEpisode> episodes)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(episodes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowEpisodesStateLoading value) loading,
    required TResult Function(_ShowEpisodesStateData value) data,
    required TResult Function(_ShowEpisodesStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ShowEpisodesStateLoading value)? loading,
    TResult Function(_ShowEpisodesStateData value)? data,
    TResult Function(_ShowEpisodesStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowEpisodesStateLoading value)? loading,
    TResult Function(_ShowEpisodesStateData value)? data,
    TResult Function(_ShowEpisodesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShowEpisodesStateLoadingToJson(this);
  }
}

abstract class _ShowEpisodesStateLoading implements ShowEpisodesState {
  factory _ShowEpisodesStateLoading(List<ShowEpisode> episodes) =
      _$_ShowEpisodesStateLoading;

  factory _ShowEpisodesStateLoading.fromJson(Map<String, dynamic> json) =
      _$_ShowEpisodesStateLoading.fromJson;

  @override
  List<ShowEpisode> get episodes;
  @override
  @JsonKey(ignore: true)
  _$ShowEpisodesStateLoadingCopyWith<_ShowEpisodesStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShowEpisodesStateDataCopyWith<$Res>
    implements $ShowEpisodesStateCopyWith<$Res> {
  factory _$ShowEpisodesStateDataCopyWith(_ShowEpisodesStateData value,
          $Res Function(_ShowEpisodesStateData) then) =
      __$ShowEpisodesStateDataCopyWithImpl<$Res>;
  @override
  $Res call({List<ShowEpisode> episodes});
}

/// @nodoc
class __$ShowEpisodesStateDataCopyWithImpl<$Res>
    extends _$ShowEpisodesStateCopyWithImpl<$Res>
    implements _$ShowEpisodesStateDataCopyWith<$Res> {
  __$ShowEpisodesStateDataCopyWithImpl(_ShowEpisodesStateData _value,
      $Res Function(_ShowEpisodesStateData) _then)
      : super(_value, (v) => _then(v as _ShowEpisodesStateData));

  @override
  _ShowEpisodesStateData get _value => super._value as _ShowEpisodesStateData;

  @override
  $Res call({
    Object? episodes = freezed,
  }) {
    return _then(_ShowEpisodesStateData(
      episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<ShowEpisode>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShowEpisodesStateData implements _ShowEpisodesStateData {
  _$_ShowEpisodesStateData(this.episodes, {String? $type})
      : $type = $type ?? 'data';

  factory _$_ShowEpisodesStateData.fromJson(Map<String, dynamic> json) =>
      _$$_ShowEpisodesStateDataFromJson(json);

  @override
  final List<ShowEpisode> episodes;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ShowEpisodesState.data(episodes: $episodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShowEpisodesStateData &&
            const DeepCollectionEquality().equals(other.episodes, episodes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(episodes));

  @JsonKey(ignore: true)
  @override
  _$ShowEpisodesStateDataCopyWith<_ShowEpisodesStateData> get copyWith =>
      __$ShowEpisodesStateDataCopyWithImpl<_ShowEpisodesStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ShowEpisode> episodes) loading,
    required TResult Function(List<ShowEpisode> episodes) data,
    required TResult Function(String errorMsg, List<ShowEpisode> episodes)
        error,
  }) {
    return data(episodes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ShowEpisode> episodes)? loading,
    TResult Function(List<ShowEpisode> episodes)? data,
    TResult Function(String errorMsg, List<ShowEpisode> episodes)? error,
  }) {
    return data?.call(episodes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ShowEpisode> episodes)? loading,
    TResult Function(List<ShowEpisode> episodes)? data,
    TResult Function(String errorMsg, List<ShowEpisode> episodes)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(episodes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowEpisodesStateLoading value) loading,
    required TResult Function(_ShowEpisodesStateData value) data,
    required TResult Function(_ShowEpisodesStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ShowEpisodesStateLoading value)? loading,
    TResult Function(_ShowEpisodesStateData value)? data,
    TResult Function(_ShowEpisodesStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowEpisodesStateLoading value)? loading,
    TResult Function(_ShowEpisodesStateData value)? data,
    TResult Function(_ShowEpisodesStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShowEpisodesStateDataToJson(this);
  }
}

abstract class _ShowEpisodesStateData implements ShowEpisodesState {
  factory _ShowEpisodesStateData(List<ShowEpisode> episodes) =
      _$_ShowEpisodesStateData;

  factory _ShowEpisodesStateData.fromJson(Map<String, dynamic> json) =
      _$_ShowEpisodesStateData.fromJson;

  @override
  List<ShowEpisode> get episodes;
  @override
  @JsonKey(ignore: true)
  _$ShowEpisodesStateDataCopyWith<_ShowEpisodesStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShowEpisodesStateErrorCopyWith<$Res>
    implements $ShowEpisodesStateCopyWith<$Res> {
  factory _$ShowEpisodesStateErrorCopyWith(_ShowEpisodesStateError value,
          $Res Function(_ShowEpisodesStateError) then) =
      __$ShowEpisodesStateErrorCopyWithImpl<$Res>;
  @override
  $Res call({String errorMsg, List<ShowEpisode> episodes});
}

/// @nodoc
class __$ShowEpisodesStateErrorCopyWithImpl<$Res>
    extends _$ShowEpisodesStateCopyWithImpl<$Res>
    implements _$ShowEpisodesStateErrorCopyWith<$Res> {
  __$ShowEpisodesStateErrorCopyWithImpl(_ShowEpisodesStateError _value,
      $Res Function(_ShowEpisodesStateError) _then)
      : super(_value, (v) => _then(v as _ShowEpisodesStateError));

  @override
  _ShowEpisodesStateError get _value => super._value as _ShowEpisodesStateError;

  @override
  $Res call({
    Object? errorMsg = freezed,
    Object? episodes = freezed,
  }) {
    return _then(_ShowEpisodesStateError(
      errorMsg == freezed
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<ShowEpisode>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShowEpisodesStateError implements _ShowEpisodesStateError {
  _$_ShowEpisodesStateError(this.errorMsg, this.episodes, {String? $type})
      : $type = $type ?? 'error';

  factory _$_ShowEpisodesStateError.fromJson(Map<String, dynamic> json) =>
      _$$_ShowEpisodesStateErrorFromJson(json);

  @override
  final String errorMsg;
  @override
  final List<ShowEpisode> episodes;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ShowEpisodesState.error(errorMsg: $errorMsg, episodes: $episodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShowEpisodesStateError &&
            const DeepCollectionEquality().equals(other.errorMsg, errorMsg) &&
            const DeepCollectionEquality().equals(other.episodes, episodes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(errorMsg),
      const DeepCollectionEquality().hash(episodes));

  @JsonKey(ignore: true)
  @override
  _$ShowEpisodesStateErrorCopyWith<_ShowEpisodesStateError> get copyWith =>
      __$ShowEpisodesStateErrorCopyWithImpl<_ShowEpisodesStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ShowEpisode> episodes) loading,
    required TResult Function(List<ShowEpisode> episodes) data,
    required TResult Function(String errorMsg, List<ShowEpisode> episodes)
        error,
  }) {
    return error(errorMsg, episodes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ShowEpisode> episodes)? loading,
    TResult Function(List<ShowEpisode> episodes)? data,
    TResult Function(String errorMsg, List<ShowEpisode> episodes)? error,
  }) {
    return error?.call(errorMsg, episodes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ShowEpisode> episodes)? loading,
    TResult Function(List<ShowEpisode> episodes)? data,
    TResult Function(String errorMsg, List<ShowEpisode> episodes)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMsg, episodes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowEpisodesStateLoading value) loading,
    required TResult Function(_ShowEpisodesStateData value) data,
    required TResult Function(_ShowEpisodesStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ShowEpisodesStateLoading value)? loading,
    TResult Function(_ShowEpisodesStateData value)? data,
    TResult Function(_ShowEpisodesStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowEpisodesStateLoading value)? loading,
    TResult Function(_ShowEpisodesStateData value)? data,
    TResult Function(_ShowEpisodesStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShowEpisodesStateErrorToJson(this);
  }
}

abstract class _ShowEpisodesStateError implements ShowEpisodesState {
  factory _ShowEpisodesStateError(String errorMsg, List<ShowEpisode> episodes) =
      _$_ShowEpisodesStateError;

  factory _ShowEpisodesStateError.fromJson(Map<String, dynamic> json) =
      _$_ShowEpisodesStateError.fromJson;

  String get errorMsg;
  @override
  List<ShowEpisode> get episodes;
  @override
  @JsonKey(ignore: true)
  _$ShowEpisodesStateErrorCopyWith<_ShowEpisodesStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
