// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shows_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShowsStateLoading _$$ShowsStateLoadingFromJson(Map<String, dynamic> json) =>
    _$ShowsStateLoading(
      (json['shows'] as List<dynamic>)
          .map((e) => Show.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ShowsStateLoadingToJson(_$ShowsStateLoading instance) =>
    <String, dynamic>{
      'shows': instance.shows.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };

_$ShowsStateLoaded _$$ShowsStateLoadedFromJson(Map<String, dynamic> json) =>
    _$ShowsStateLoaded(
      (json['shows'] as List<dynamic>)
          .map((e) => Show.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ShowsStateLoadedToJson(_$ShowsStateLoaded instance) =>
    <String, dynamic>{
      'shows': instance.shows.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };

_$ShowsStateError _$$ShowsStateErrorFromJson(Map<String, dynamic> json) =>
    _$ShowsStateError(
      json['msg'] as String,
      (json['shows'] as List<dynamic>)
          .map((e) => Show.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ShowsStateErrorToJson(_$ShowsStateError instance) =>
    <String, dynamic>{
      'msg': instance.msg,
      'shows': instance.shows.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };
