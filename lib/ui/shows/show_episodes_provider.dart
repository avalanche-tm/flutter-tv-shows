import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/shows/shows_interactor.dart';
import 'show_episodes_state.dart';
import 'shows_interactor_provider.dart';

final showEpisodesProvider =
    StateNotifierProvider.autoDispose<ShowEpisodesNotifier, ShowEpisodesState>(
  (ref) => ShowEpisodesNotifier(ref.read(showsInteractorProvider)),
);

class ShowEpisodesNotifier extends StateNotifier<ShowEpisodesState> {
  final ShowsInteractor _showsInteractor;

  ShowEpisodesNotifier(this._showsInteractor)
      : super(ShowEpisodesState.data([]));

  Future<void> getShowEpisodes(String showId,
      {bool pullRefresh = false}) async {
    if (!pullRefresh) {
      state = ShowEpisodesState.loading(state.episodes);
    }
    final res = await _showsInteractor.getShowEpisodes(showId).run();
    state = res.match(
      (error) => ShowEpisodesState.error(error.errorMsg, state.episodes),
      (episodes) => ShowEpisodesState.data(episodes),
    );
  }
}
