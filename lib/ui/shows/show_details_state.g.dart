// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_details_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShowDetailsStateLoading _$$_ShowDetailsStateLoadingFromJson(
        Map<String, dynamic> json) =>
    _$_ShowDetailsStateLoading(
      json['details'] == null
          ? null
          : ShowDetails.fromJson(json['details'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ShowDetailsStateLoadingToJson(
        _$_ShowDetailsStateLoading instance) =>
    <String, dynamic>{
      'details': instance.details?.toJson(),
      'runtimeType': instance.$type,
    };

_$_ShowDetailsStateData _$$_ShowDetailsStateDataFromJson(
        Map<String, dynamic> json) =>
    _$_ShowDetailsStateData(
      json['details'] == null
          ? null
          : ShowDetails.fromJson(json['details'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ShowDetailsStateDataToJson(
        _$_ShowDetailsStateData instance) =>
    <String, dynamic>{
      'details': instance.details?.toJson(),
      'runtimeType': instance.$type,
    };

_$_ShowDetailsStateError _$$_ShowDetailsStateErrorFromJson(
        Map<String, dynamic> json) =>
    _$_ShowDetailsStateError(
      json['errorMsg'] as String,
      json['details'] == null
          ? null
          : ShowDetails.fromJson(json['details'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ShowDetailsStateErrorToJson(
        _$_ShowDetailsStateError instance) =>
    <String, dynamic>{
      'errorMsg': instance.errorMsg,
      'details': instance.details?.toJson(),
      'runtimeType': instance.$type,
    };
