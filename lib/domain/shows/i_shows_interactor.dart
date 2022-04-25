import 'shows_failure.dart';
import 'package:fpdart/fpdart.dart';

import 'show.dart';
import 'show_details.dart';
import 'show_episode.dart';

abstract class IShowsInteractor {
  TaskEither<ShowsFailure, List<Show>> getShows();
  TaskEither<ShowsFailure, ShowDetails> getShowDetails(String showId);
  TaskEither<ShowsFailure, ShowEpisodes> getShowEpisodes(String showId);
}
