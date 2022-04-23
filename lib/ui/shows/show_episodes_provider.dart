import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/shows/show_episode.dart';
import 'shows_interactor_provider.dart';

final showEpisodesProvider = FutureProvider.family<ShowEpisodes, String>(
  (ref, showId) async {
    final episodes =
        await ref.watch(showsInteractorProvider).getShowEpisodes(showId).run();
    return episodes.match(
      (error) => Future.error(error.toString()),
      (data) => Future.value(data),
    );
  },
);
