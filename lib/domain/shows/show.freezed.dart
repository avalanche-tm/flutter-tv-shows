// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'show.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Show _$ShowFromJson(Map<String, dynamic> json) {
  return _Show.fromJson(json);
}

/// @nodoc
class _$ShowTearOff {
  const _$ShowTearOff();

  _Show call(
      {@JsonKey(name: '_id') required String id,
      required String title,
      required String imageUrl,
      required int likesCount}) {
    return _Show(
      id: id,
      title: title,
      imageUrl: imageUrl,
      likesCount: likesCount,
    );
  }

  Show fromJson(Map<String, Object?> json) {
    return Show.fromJson(json);
  }
}

/// @nodoc
const $Show = _$ShowTearOff();

/// @nodoc
mixin _$Show {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int get likesCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowCopyWith<Show> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowCopyWith<$Res> {
  factory $ShowCopyWith(Show value, $Res Function(Show) then) =
      _$ShowCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String imageUrl,
      int likesCount});
}

/// @nodoc
class _$ShowCopyWithImpl<$Res> implements $ShowCopyWith<$Res> {
  _$ShowCopyWithImpl(this._value, this._then);

  final Show _value;
  // ignore: unused_field
  final $Res Function(Show) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? likesCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      likesCount: likesCount == freezed
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ShowCopyWith<$Res> implements $ShowCopyWith<$Res> {
  factory _$ShowCopyWith(_Show value, $Res Function(_Show) then) =
      __$ShowCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String imageUrl,
      int likesCount});
}

/// @nodoc
class __$ShowCopyWithImpl<$Res> extends _$ShowCopyWithImpl<$Res>
    implements _$ShowCopyWith<$Res> {
  __$ShowCopyWithImpl(_Show _value, $Res Function(_Show) _then)
      : super(_value, (v) => _then(v as _Show));

  @override
  _Show get _value => super._value as _Show;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? likesCount = freezed,
  }) {
    return _then(_Show(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      likesCount: likesCount == freezed
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Show implements _Show {
  _$_Show(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      required this.imageUrl,
      required this.likesCount});

  factory _$_Show.fromJson(Map<String, dynamic> json) => _$$_ShowFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String title;
  @override
  final String imageUrl;
  @override
  final int likesCount;

  @override
  String toString() {
    return 'Show(id: $id, title: $title, imageUrl: $imageUrl, likesCount: $likesCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Show &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.likesCount, likesCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(likesCount));

  @JsonKey(ignore: true)
  @override
  _$ShowCopyWith<_Show> get copyWith =>
      __$ShowCopyWithImpl<_Show>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShowToJson(this);
  }
}

abstract class _Show implements Show {
  factory _Show(
      {@JsonKey(name: '_id') required String id,
      required String title,
      required String imageUrl,
      required int likesCount}) = _$_Show;

  factory _Show.fromJson(Map<String, dynamic> json) = _$_Show.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get title;
  @override
  String get imageUrl;
  @override
  int get likesCount;
  @override
  @JsonKey(ignore: true)
  _$ShowCopyWith<_Show> get copyWith => throw _privateConstructorUsedError;
}
