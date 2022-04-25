// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'show_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShowDetailsState _$ShowDetailsStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loading':
      return _ShowDetailsStateLoading.fromJson(json);
    case 'data':
      return _ShowDetailsStateData.fromJson(json);
    case 'error':
      return _ShowDetailsStateError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ShowDetailsState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ShowDetailsStateTearOff {
  const _$ShowDetailsStateTearOff();

  _ShowDetailsStateLoading loading(ShowDetails? details) {
    return _ShowDetailsStateLoading(
      details,
    );
  }

  _ShowDetailsStateData data(ShowDetails? details) {
    return _ShowDetailsStateData(
      details,
    );
  }

  _ShowDetailsStateError error(String errorMsg, ShowDetails? details) {
    return _ShowDetailsStateError(
      errorMsg,
      details,
    );
  }

  ShowDetailsState fromJson(Map<String, Object?> json) {
    return ShowDetailsState.fromJson(json);
  }
}

/// @nodoc
const $ShowDetailsState = _$ShowDetailsStateTearOff();

/// @nodoc
mixin _$ShowDetailsState {
  ShowDetails? get details => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShowDetails? details) loading,
    required TResult Function(ShowDetails? details) data,
    required TResult Function(String errorMsg, ShowDetails? details) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ShowDetails? details)? loading,
    TResult Function(ShowDetails? details)? data,
    TResult Function(String errorMsg, ShowDetails? details)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShowDetails? details)? loading,
    TResult Function(ShowDetails? details)? data,
    TResult Function(String errorMsg, ShowDetails? details)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowDetailsStateLoading value) loading,
    required TResult Function(_ShowDetailsStateData value) data,
    required TResult Function(_ShowDetailsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ShowDetailsStateLoading value)? loading,
    TResult Function(_ShowDetailsStateData value)? data,
    TResult Function(_ShowDetailsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowDetailsStateLoading value)? loading,
    TResult Function(_ShowDetailsStateData value)? data,
    TResult Function(_ShowDetailsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowDetailsStateCopyWith<ShowDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowDetailsStateCopyWith<$Res> {
  factory $ShowDetailsStateCopyWith(
          ShowDetailsState value, $Res Function(ShowDetailsState) then) =
      _$ShowDetailsStateCopyWithImpl<$Res>;
  $Res call({ShowDetails? details});

  $ShowDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class _$ShowDetailsStateCopyWithImpl<$Res>
    implements $ShowDetailsStateCopyWith<$Res> {
  _$ShowDetailsStateCopyWithImpl(this._value, this._then);

  final ShowDetailsState _value;
  // ignore: unused_field
  final $Res Function(ShowDetailsState) _then;

  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ShowDetails?,
    ));
  }

  @override
  $ShowDetailsCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $ShowDetailsCopyWith<$Res>(_value.details!, (value) {
      return _then(_value.copyWith(details: value));
    });
  }
}

/// @nodoc
abstract class _$ShowDetailsStateLoadingCopyWith<$Res>
    implements $ShowDetailsStateCopyWith<$Res> {
  factory _$ShowDetailsStateLoadingCopyWith(_ShowDetailsStateLoading value,
          $Res Function(_ShowDetailsStateLoading) then) =
      __$ShowDetailsStateLoadingCopyWithImpl<$Res>;
  @override
  $Res call({ShowDetails? details});

  @override
  $ShowDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class __$ShowDetailsStateLoadingCopyWithImpl<$Res>
    extends _$ShowDetailsStateCopyWithImpl<$Res>
    implements _$ShowDetailsStateLoadingCopyWith<$Res> {
  __$ShowDetailsStateLoadingCopyWithImpl(_ShowDetailsStateLoading _value,
      $Res Function(_ShowDetailsStateLoading) _then)
      : super(_value, (v) => _then(v as _ShowDetailsStateLoading));

  @override
  _ShowDetailsStateLoading get _value =>
      super._value as _ShowDetailsStateLoading;

  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_ShowDetailsStateLoading(
      details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ShowDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShowDetailsStateLoading implements _ShowDetailsStateLoading {
  _$_ShowDetailsStateLoading(this.details, {String? $type})
      : $type = $type ?? 'loading';

  factory _$_ShowDetailsStateLoading.fromJson(Map<String, dynamic> json) =>
      _$$_ShowDetailsStateLoadingFromJson(json);

  @override
  final ShowDetails? details;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ShowDetailsState.loading(details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShowDetailsStateLoading &&
            const DeepCollectionEquality().equals(other.details, details));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(details));

  @JsonKey(ignore: true)
  @override
  _$ShowDetailsStateLoadingCopyWith<_ShowDetailsStateLoading> get copyWith =>
      __$ShowDetailsStateLoadingCopyWithImpl<_ShowDetailsStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShowDetails? details) loading,
    required TResult Function(ShowDetails? details) data,
    required TResult Function(String errorMsg, ShowDetails? details) error,
  }) {
    return loading(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ShowDetails? details)? loading,
    TResult Function(ShowDetails? details)? data,
    TResult Function(String errorMsg, ShowDetails? details)? error,
  }) {
    return loading?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShowDetails? details)? loading,
    TResult Function(ShowDetails? details)? data,
    TResult Function(String errorMsg, ShowDetails? details)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowDetailsStateLoading value) loading,
    required TResult Function(_ShowDetailsStateData value) data,
    required TResult Function(_ShowDetailsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ShowDetailsStateLoading value)? loading,
    TResult Function(_ShowDetailsStateData value)? data,
    TResult Function(_ShowDetailsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowDetailsStateLoading value)? loading,
    TResult Function(_ShowDetailsStateData value)? data,
    TResult Function(_ShowDetailsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShowDetailsStateLoadingToJson(this);
  }
}

abstract class _ShowDetailsStateLoading implements ShowDetailsState {
  factory _ShowDetailsStateLoading(ShowDetails? details) =
      _$_ShowDetailsStateLoading;

  factory _ShowDetailsStateLoading.fromJson(Map<String, dynamic> json) =
      _$_ShowDetailsStateLoading.fromJson;

  @override
  ShowDetails? get details;
  @override
  @JsonKey(ignore: true)
  _$ShowDetailsStateLoadingCopyWith<_ShowDetailsStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShowDetailsStateDataCopyWith<$Res>
    implements $ShowDetailsStateCopyWith<$Res> {
  factory _$ShowDetailsStateDataCopyWith(_ShowDetailsStateData value,
          $Res Function(_ShowDetailsStateData) then) =
      __$ShowDetailsStateDataCopyWithImpl<$Res>;
  @override
  $Res call({ShowDetails? details});

  @override
  $ShowDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class __$ShowDetailsStateDataCopyWithImpl<$Res>
    extends _$ShowDetailsStateCopyWithImpl<$Res>
    implements _$ShowDetailsStateDataCopyWith<$Res> {
  __$ShowDetailsStateDataCopyWithImpl(
      _ShowDetailsStateData _value, $Res Function(_ShowDetailsStateData) _then)
      : super(_value, (v) => _then(v as _ShowDetailsStateData));

  @override
  _ShowDetailsStateData get _value => super._value as _ShowDetailsStateData;

  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_ShowDetailsStateData(
      details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ShowDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShowDetailsStateData implements _ShowDetailsStateData {
  _$_ShowDetailsStateData(this.details, {String? $type})
      : $type = $type ?? 'data';

  factory _$_ShowDetailsStateData.fromJson(Map<String, dynamic> json) =>
      _$$_ShowDetailsStateDataFromJson(json);

  @override
  final ShowDetails? details;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ShowDetailsState.data(details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShowDetailsStateData &&
            const DeepCollectionEquality().equals(other.details, details));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(details));

  @JsonKey(ignore: true)
  @override
  _$ShowDetailsStateDataCopyWith<_ShowDetailsStateData> get copyWith =>
      __$ShowDetailsStateDataCopyWithImpl<_ShowDetailsStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShowDetails? details) loading,
    required TResult Function(ShowDetails? details) data,
    required TResult Function(String errorMsg, ShowDetails? details) error,
  }) {
    return data(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ShowDetails? details)? loading,
    TResult Function(ShowDetails? details)? data,
    TResult Function(String errorMsg, ShowDetails? details)? error,
  }) {
    return data?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShowDetails? details)? loading,
    TResult Function(ShowDetails? details)? data,
    TResult Function(String errorMsg, ShowDetails? details)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowDetailsStateLoading value) loading,
    required TResult Function(_ShowDetailsStateData value) data,
    required TResult Function(_ShowDetailsStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ShowDetailsStateLoading value)? loading,
    TResult Function(_ShowDetailsStateData value)? data,
    TResult Function(_ShowDetailsStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowDetailsStateLoading value)? loading,
    TResult Function(_ShowDetailsStateData value)? data,
    TResult Function(_ShowDetailsStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShowDetailsStateDataToJson(this);
  }
}

abstract class _ShowDetailsStateData implements ShowDetailsState {
  factory _ShowDetailsStateData(ShowDetails? details) = _$_ShowDetailsStateData;

  factory _ShowDetailsStateData.fromJson(Map<String, dynamic> json) =
      _$_ShowDetailsStateData.fromJson;

  @override
  ShowDetails? get details;
  @override
  @JsonKey(ignore: true)
  _$ShowDetailsStateDataCopyWith<_ShowDetailsStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShowDetailsStateErrorCopyWith<$Res>
    implements $ShowDetailsStateCopyWith<$Res> {
  factory _$ShowDetailsStateErrorCopyWith(_ShowDetailsStateError value,
          $Res Function(_ShowDetailsStateError) then) =
      __$ShowDetailsStateErrorCopyWithImpl<$Res>;
  @override
  $Res call({String errorMsg, ShowDetails? details});

  @override
  $ShowDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class __$ShowDetailsStateErrorCopyWithImpl<$Res>
    extends _$ShowDetailsStateCopyWithImpl<$Res>
    implements _$ShowDetailsStateErrorCopyWith<$Res> {
  __$ShowDetailsStateErrorCopyWithImpl(_ShowDetailsStateError _value,
      $Res Function(_ShowDetailsStateError) _then)
      : super(_value, (v) => _then(v as _ShowDetailsStateError));

  @override
  _ShowDetailsStateError get _value => super._value as _ShowDetailsStateError;

  @override
  $Res call({
    Object? errorMsg = freezed,
    Object? details = freezed,
  }) {
    return _then(_ShowDetailsStateError(
      errorMsg == freezed
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ShowDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShowDetailsStateError implements _ShowDetailsStateError {
  _$_ShowDetailsStateError(this.errorMsg, this.details, {String? $type})
      : $type = $type ?? 'error';

  factory _$_ShowDetailsStateError.fromJson(Map<String, dynamic> json) =>
      _$$_ShowDetailsStateErrorFromJson(json);

  @override
  final String errorMsg;
  @override
  final ShowDetails? details;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ShowDetailsState.error(errorMsg: $errorMsg, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShowDetailsStateError &&
            const DeepCollectionEquality().equals(other.errorMsg, errorMsg) &&
            const DeepCollectionEquality().equals(other.details, details));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(errorMsg),
      const DeepCollectionEquality().hash(details));

  @JsonKey(ignore: true)
  @override
  _$ShowDetailsStateErrorCopyWith<_ShowDetailsStateError> get copyWith =>
      __$ShowDetailsStateErrorCopyWithImpl<_ShowDetailsStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ShowDetails? details) loading,
    required TResult Function(ShowDetails? details) data,
    required TResult Function(String errorMsg, ShowDetails? details) error,
  }) {
    return error(errorMsg, details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ShowDetails? details)? loading,
    TResult Function(ShowDetails? details)? data,
    TResult Function(String errorMsg, ShowDetails? details)? error,
  }) {
    return error?.call(errorMsg, details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ShowDetails? details)? loading,
    TResult Function(ShowDetails? details)? data,
    TResult Function(String errorMsg, ShowDetails? details)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMsg, details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowDetailsStateLoading value) loading,
    required TResult Function(_ShowDetailsStateData value) data,
    required TResult Function(_ShowDetailsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ShowDetailsStateLoading value)? loading,
    TResult Function(_ShowDetailsStateData value)? data,
    TResult Function(_ShowDetailsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowDetailsStateLoading value)? loading,
    TResult Function(_ShowDetailsStateData value)? data,
    TResult Function(_ShowDetailsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShowDetailsStateErrorToJson(this);
  }
}

abstract class _ShowDetailsStateError implements ShowDetailsState {
  factory _ShowDetailsStateError(String errorMsg, ShowDetails? details) =
      _$_ShowDetailsStateError;

  factory _ShowDetailsStateError.fromJson(Map<String, dynamic> json) =
      _$_ShowDetailsStateError.fromJson;

  String get errorMsg;
  @override
  ShowDetails? get details;
  @override
  @JsonKey(ignore: true)
  _$ShowDetailsStateErrorCopyWith<_ShowDetailsStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
