import 'package:fpdart/fpdart.dart';

import 'i_shows_interactor.dart';
import 'i_shows_repository.dart';
import 'show.dart';
import 'show_episode.dart';
import 'show_details.dart';
import 'shows_failure.dart';

class ShowsInteractor extends IShowsInteractor {
  final IShowsRepository _showsRepository;

  ShowsInteractor(this._showsRepository);

  @override
  TaskEither<ShowsFailure, List<Show>> getShows() {
    return _showsRepository
        .getShows() //
        .mapLeft((error) => ShowsFailure(error));
  }

  @override
  TaskEither<ShowsFailure, ShowDetails> getShowDetails(String showId) {
    return _showsRepository
        .getShowDetails(showId) //
        .mapLeft((error) => ShowsFailure(error));
  }

  @override
  TaskEither<ShowsFailure, ShowEpisodes> getShowEpisodes(String showId) {
    return _showsRepository
        .getShowEpisodes(showId) //
        .mapLeft((error) => ShowsFailure(error));
  }
}
