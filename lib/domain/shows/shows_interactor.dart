import 'package:fpdart/src/task_either.dart';

import 'i_shows_interactor.dart';
import 'i_shows_repository.dart';
import 'show.dart';
import 'show_episode.dart';
import 'show_details.dart';

class ShowsInteractor extends IShowsInteractor {
  final IShowsRepository _showsRepository;

  ShowsInteractor(this._showsRepository);

  @override
  TaskEither<Object, List<Show>> getShows() {
    return _showsRepository.getShows();
  }

  @override
  TaskEither<Object, ShowDetails> getShowDetails(String showId) {
    return _showsRepository.getShowDetails(showId);
  }

  @override
  TaskEither<Object, ShowEpisodes> getShowEpisodes(String showId) {
    return _showsRepository.getShowEpisodes(showId);
  }
}
