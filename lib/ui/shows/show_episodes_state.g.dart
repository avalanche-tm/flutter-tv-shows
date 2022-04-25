// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_episodes_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShowEpisodesStateLoading _$$_ShowEpisodesStateLoadingFromJson(
        Map<String, dynamic> json) =>
    _$_ShowEpisodesStateLoading(
      (json['episodes'] as List<dynamic>)
          .map((e) => ShowEpisode.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ShowEpisodesStateLoadingToJson(
        _$_ShowEpisodesStateLoading instance) =>
    <String, dynamic>{
      'episodes': instance.episodes.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };

_$_ShowEpisodesStateData _$$_ShowEpisodesStateDataFromJson(
        Map<String, dynamic> json) =>
    _$_ShowEpisodesStateData(
      (json['episodes'] as List<dynamic>)
          .map((e) => ShowEpisode.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ShowEpisodesStateDataToJson(
        _$_ShowEpisodesStateData instance) =>
    <String, dynamic>{
      'episodes': instance.episodes.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };

_$_ShowEpisodesStateError _$$_ShowEpisodesStateErrorFromJson(
        Map<String, dynamic> json) =>
    _$_ShowEpisodesStateError(
      json['errorMsg'] as String,
      (json['episodes'] as List<dynamic>)
          .map((e) => ShowEpisode.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ShowEpisodesStateErrorToJson(
        _$_ShowEpisodesStateError instance) =>
    <String, dynamic>{
      'errorMsg': instance.errorMsg,
      'episodes': instance.episodes.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };
