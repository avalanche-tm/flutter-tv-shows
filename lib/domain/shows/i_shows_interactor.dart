import 'package:fpdart/fpdart.dart';

import 'show.dart';
import 'show_details.dart';
import 'show_episode.dart';

abstract class IShowsInteractor {
  TaskEither<Object, List<Show>> getShows();
  TaskEither<Object, ShowDetails> getShowDetails(String showId);
  TaskEither<Object, ShowEpisodes> getShowEpisodes(String showId);
}
