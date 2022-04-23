// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShowEpisode _$$_ShowEpisodeFromJson(Map<String, dynamic> json) =>
    _$_ShowEpisode(
      id: json['_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      episodeNumber: json['episodeNumber'] as String,
      season: json['season'] as String,
    );

Map<String, dynamic> _$$_ShowEpisodeToJson(_$_ShowEpisode instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'episodeNumber': instance.episodeNumber,
      'season': instance.season,
    };
