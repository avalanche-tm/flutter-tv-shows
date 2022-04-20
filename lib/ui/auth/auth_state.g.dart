// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthStateLoggingIn _$$AuthStateLoggingInFromJson(Map<String, dynamic> json) =>
    _$AuthStateLoggingIn(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthStateLoggingInToJson(
        _$AuthStateLoggingIn instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AuthStateLoggedIn _$$AuthStateLoggedInFromJson(Map<String, dynamic> json) =>
    _$AuthStateLoggedIn(
      User.fromJson(json['user'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthStateLoggedInToJson(_$AuthStateLoggedIn instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'runtimeType': instance.$type,
    };

_$AuthStateError _$$AuthStateErrorFromJson(Map<String, dynamic> json) =>
    _$AuthStateError(
      json['msg'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthStateErrorToJson(_$AuthStateError instance) =>
    <String, dynamic>{
      'msg': instance.msg,
      'runtimeType': instance.$type,
    };

_$AuthStateLoggedOut _$$AuthStateLoggedOutFromJson(Map<String, dynamic> json) =>
    _$AuthStateLoggedOut(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AuthStateLoggedOutToJson(
        _$AuthStateLoggedOut instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
