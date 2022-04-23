// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'show_episode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShowEpisode _$ShowEpisodeFromJson(Map<String, dynamic> json) {
  return _ShowEpisode.fromJson(json);
}

/// @nodoc
class _$ShowEpisodeTearOff {
  const _$ShowEpisodeTearOff();

  _ShowEpisode call(
      {@JsonKey(name: '_id') required String id,
      required String title,
      required String description,
      required String imageUrl,
      required String episodeNumber,
      required String season}) {
    return _ShowEpisode(
      id: id,
      title: title,
      description: description,
      imageUrl: imageUrl,
      episodeNumber: episodeNumber,
      season: season,
    );
  }

  ShowEpisode fromJson(Map<String, Object?> json) {
    return ShowEpisode.fromJson(json);
  }
}

/// @nodoc
const $ShowEpisode = _$ShowEpisodeTearOff();

/// @nodoc
mixin _$ShowEpisode {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get episodeNumber => throw _privateConstructorUsedError;
  String get season => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowEpisodeCopyWith<ShowEpisode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowEpisodeCopyWith<$Res> {
  factory $ShowEpisodeCopyWith(
          ShowEpisode value, $Res Function(ShowEpisode) then) =
      _$ShowEpisodeCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String description,
      String imageUrl,
      String episodeNumber,
      String season});
}

/// @nodoc
class _$ShowEpisodeCopyWithImpl<$Res> implements $ShowEpisodeCopyWith<$Res> {
  _$ShowEpisodeCopyWithImpl(this._value, this._then);

  final ShowEpisode _value;
  // ignore: unused_field
  final $Res Function(ShowEpisode) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? episodeNumber = freezed,
    Object? season = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      episodeNumber: episodeNumber == freezed
          ? _value.episodeNumber
          : episodeNumber // ignore: cast_nullable_to_non_nullable
              as String,
      season: season == freezed
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ShowEpisodeCopyWith<$Res>
    implements $ShowEpisodeCopyWith<$Res> {
  factory _$ShowEpisodeCopyWith(
          _ShowEpisode value, $Res Function(_ShowEpisode) then) =
      __$ShowEpisodeCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      String title,
      String description,
      String imageUrl,
      String episodeNumber,
      String season});
}

/// @nodoc
class __$ShowEpisodeCopyWithImpl<$Res> extends _$ShowEpisodeCopyWithImpl<$Res>
    implements _$ShowEpisodeCopyWith<$Res> {
  __$ShowEpisodeCopyWithImpl(
      _ShowEpisode _value, $Res Function(_ShowEpisode) _then)
      : super(_value, (v) => _then(v as _ShowEpisode));

  @override
  _ShowEpisode get _value => super._value as _ShowEpisode;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? episodeNumber = freezed,
    Object? season = freezed,
  }) {
    return _then(_ShowEpisode(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      episodeNumber: episodeNumber == freezed
          ? _value.episodeNumber
          : episodeNumber // ignore: cast_nullable_to_non_nullable
              as String,
      season: season == freezed
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShowEpisode extends _ShowEpisode {
  _$_ShowEpisode(
      {@JsonKey(name: '_id') required this.id,
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.episodeNumber,
      required this.season})
      : super._();

  factory _$_ShowEpisode.fromJson(Map<String, dynamic> json) =>
      _$$_ShowEpisodeFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final String episodeNumber;
  @override
  final String season;

  @override
  String toString() {
    return 'ShowEpisode(id: $id, title: $title, description: $description, imageUrl: $imageUrl, episodeNumber: $episodeNumber, season: $season)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShowEpisode &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.episodeNumber, episodeNumber) &&
            const DeepCollectionEquality().equals(other.season, season));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(episodeNumber),
      const DeepCollectionEquality().hash(season));

  @JsonKey(ignore: true)
  @override
  _$ShowEpisodeCopyWith<_ShowEpisode> get copyWith =>
      __$ShowEpisodeCopyWithImpl<_ShowEpisode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShowEpisodeToJson(this);
  }
}

abstract class _ShowEpisode extends ShowEpisode {
  factory _ShowEpisode(
      {@JsonKey(name: '_id') required String id,
      required String title,
      required String description,
      required String imageUrl,
      required String episodeNumber,
      required String season}) = _$_ShowEpisode;
  _ShowEpisode._() : super._();

  factory _ShowEpisode.fromJson(Map<String, dynamic> json) =
      _$_ShowEpisode.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get imageUrl;
  @override
  String get episodeNumber;
  @override
  String get season;
  @override
  @JsonKey(ignore: true)
  _$ShowEpisodeCopyWith<_ShowEpisode> get copyWith =>
      throw _privateConstructorUsedError;
}
