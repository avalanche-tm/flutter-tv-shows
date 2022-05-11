import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/auth/user.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState.loggingIn() = AuthStateLoggingIn;
  factory AuthState.loggedIn(User user) = AuthStateLoggedIn;
  factory AuthState.error(String msg) = AuthStateError;
  factory AuthState.loggedOut() = AuthStateLoggedOut;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
