import 'package:fpdart/fpdart.dart';

import 'show.dart';
import 'show_details.dart';
import 'show_episode.dart';

abstract class IShowsRepository {
  TaskEither<Object, List<Show>> getShows();
  TaskEither<Object, ShowDetails> getShowDetails(String showId);
  TaskEither<Object, List<ShowEpisode>> getShowEpisodes(String showId);
}
