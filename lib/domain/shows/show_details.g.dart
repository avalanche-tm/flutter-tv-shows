// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShowDetails _$$_ShowDetailsFromJson(Map<String, dynamic> json) =>
    _$_ShowDetails(
      id: json['_id'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      likesCount: json['likesCount'] as int,
    );

Map<String, dynamic> _$$_ShowDetailsToJson(_$_ShowDetails instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'likesCount': instance.likesCount,
    };
