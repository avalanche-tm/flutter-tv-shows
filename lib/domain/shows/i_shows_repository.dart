import 'package:fpdart/fpdart.dart';

import 'show.dart';

abstract class IShowsRepository {
  TaskEither<Object, List<Show>> getShows();
}
