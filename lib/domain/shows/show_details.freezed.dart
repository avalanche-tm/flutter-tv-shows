// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'show_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShowDetails _$ShowDetailsFromJson(Map<String, dynamic> json) {
  return _ShowDetails.fromJson(json);
}

/// @nodoc
class _$ShowDetailsTearOff {
  const _$ShowDetailsTearOff();

  _ShowDetails call(
      {@JsonKey(name: '_id') required String id,
      required String type,
      required String title,
      required String description,
      required String imageUrl,
      required int likesCount}) {
    return _ShowDetails(
      id: id,
      type: type,
      title: title,
      description: description,
      imageUrl: imageUrl,
      likesCount: likesCount,
    );
  }

  ShowDetails fromJson(Map<String, Object?> json) {
    return ShowDetails.fromJson(json);
  }
}

/// @nodoc
const $ShowDetails = _$ShowDetailsTearOff();

/// @nodoc
mixin _$ShowDetails {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int get likesCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowDetailsCopyWith<ShowDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowDetailsCopyWith<$Res> {
  factory $ShowDetailsCopyWith(
          ShowDetails value, $Res Function(ShowDetails) then) =
      _$ShowDetailsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      String type,
      String title,
      String description,
      String imageUrl,
      int likesCount});
}

/// @nodoc
class _$ShowDetailsCopyWithImpl<$Res> implements $ShowDetailsCopyWith<$Res> {
  _$ShowDetailsCopyWithImpl(this._value, this._then);

  final ShowDetails _value;
  // ignore: unused_field
  final $Res Function(ShowDetails) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? likesCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
abstract class _$ShowDetailsCopyWith<$Res>
    implements $ShowDetailsCopyWith<$Res> {
  factory _$ShowDetailsCopyWith(
          _ShowDetails value, $Res Function(_ShowDetails) then) =
      __$ShowDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      String type,
      String title,
      String description,
      String imageUrl,
      int likesCount});
}

/// @nodoc
class __$ShowDetailsCopyWithImpl<$Res> extends _$ShowDetailsCopyWithImpl<$Res>
    implements _$ShowDetailsCopyWith<$Res> {
  __$ShowDetailsCopyWithImpl(
      _ShowDetails _value, $Res Function(_ShowDetails) _then)
      : super(_value, (v) => _then(v as _ShowDetails));

  @override
  _ShowDetails get _value => super._value as _ShowDetails;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? likesCount = freezed,
  }) {
    return _then(_ShowDetails(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
class _$_ShowDetails extends _ShowDetails {
  _$_ShowDetails(
      {@JsonKey(name: '_id') required this.id,
      required this.type,
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.likesCount})
      : super._();

  factory _$_ShowDetails.fromJson(Map<String, dynamic> json) =>
      _$$_ShowDetailsFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String type;
  @override
  final String title;
  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final int likesCount;

  @override
  String toString() {
    return 'ShowDetails(id: $id, type: $type, title: $title, description: $description, imageUrl: $imageUrl, likesCount: $likesCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShowDetails &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.likesCount, likesCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(likesCount));

  @JsonKey(ignore: true)
  @override
  _$ShowDetailsCopyWith<_ShowDetails> get copyWith =>
      __$ShowDetailsCopyWithImpl<_ShowDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShowDetailsToJson(this);
  }
}

abstract class _ShowDetails extends ShowDetails {
  factory _ShowDetails(
      {@JsonKey(name: '_id') required String id,
      required String type,
      required String title,
      required String description,
      required String imageUrl,
      required int likesCount}) = _$_ShowDetails;
  _ShowDetails._() : super._();

  factory _ShowDetails.fromJson(Map<String, dynamic> json) =
      _$_ShowDetails.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get type;
  @override
  String get title;
  @override
  String get description;
  @override
  String get imageUrl;
  @override
  int get likesCount;
  @override
  @JsonKey(ignore: true)
  _$ShowDetailsCopyWith<_ShowDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
