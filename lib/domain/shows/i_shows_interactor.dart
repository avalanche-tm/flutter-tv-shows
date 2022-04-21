import 'package:fpdart/fpdart.dart';

import 'show.dart';

abstract class IShowsInteractor {
  TaskEither<Object, List<Show>> getShows();
}
