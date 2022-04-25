import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/shows/shows_interactor.dart';
import 'show_details_state.dart';
import 'shows_interactor_provider.dart';

final showDetailsProvider =
    StateNotifierProvider.autoDispose<ShowDetailsNotifier, ShowDetailsState>(
  (ref) => ShowDetailsNotifier(
    ref.read(showsInteractorProvider),
  ),
);

class ShowDetailsNotifier extends StateNotifier<ShowDetailsState> {
  final ShowsInteractor _showsInteractor;

  ShowDetailsNotifier(this._showsInteractor)
      : super(ShowDetailsState.data(null));

  Future<void> getShowDetails(String showId, {bool pullRefresh = false}) async {
    if (!pullRefresh) {
      state = ShowDetailsState.loading(state.details);
    }
    final res = await _showsInteractor.getShowDetails(showId).run();
    state = res.match(
      (error) => ShowDetailsState.error(error.errorMsg, state.details),
      (details) => ShowDetailsState.data(details),
    );
  }
}
