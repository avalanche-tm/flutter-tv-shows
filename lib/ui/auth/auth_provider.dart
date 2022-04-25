import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/auth/i_auth_interactor.dart';
import '../action_emitter/action_emitter.dart';
import 'auth_action.dart';
import 'auth_interactor_provider.dart';
import 'auth_state.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) {
    return AuthNotifier(ref.watch(authInteractorProvider));
  },
);

class AuthNotifier extends StateNotifier<AuthState>
    with StateNotifierActionEmitterMixin<AuthAction, AuthState> {
  final IAuthInteractor _authInteractor;

  AuthNotifier(this._authInteractor) : super(AuthState.loggedOut());

  Future<void> loginWithEmail(
    String email,
    String password,
    bool rememberMe,
  ) async {
    state = AuthState.loggingIn();
    final res = await _authInteractor.login(email, password, rememberMe).run();
    res.match(
      (error) => state = AuthState.error(error.errorMsg),
      (user) {
        state = AuthState.loggedIn(user);
        emitAction(const AuthAction.navigateToShowList());
      },
    );
  }

  Future<void> logout() async {
    final res = await _authInteractor.logout().run();
    res.match(
      (error) => state = AuthState.error(error.errorMsg),
      (success) {
        state = AuthState.loggedOut();
        emitAction(const AuthAction.navigateToLogin());
      },
    );
  }

  Future<bool> get loggedIn => _authInteractor.loggedIn;

  TaskEither<Object, Unit> init() => _authInteractor.init();
}
