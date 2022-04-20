import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User(String email) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
