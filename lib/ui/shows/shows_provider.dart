import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/shows/i_shows_interactor.dart';
import 'shows_interactor_provider.dart';
import 'shows_state.dart';

final showsProvider =
    StateNotifierProvider.autoDispose<ShowsNotifier, ShowsState>(
  (ref) {
    return ShowsNotifier(ref.watch(showsInteractorProvider));
  },
);

class ShowsNotifier extends StateNotifier<ShowsState> {
  final IShowsInteractor _showsInteractor;

  ShowsNotifier(this._showsInteractor) : super(ShowsState.loaded([]));

  Future<void> getShows() async {
    state = ShowsState.loading(state.shows);
    final res = await _showsInteractor.getShows().run();
    state = res.match(
      (error) => ShowsState.error(error.errorMsg, state.shows),
      (shows) => ShowsState.loaded(shows),
    );
  }
}
