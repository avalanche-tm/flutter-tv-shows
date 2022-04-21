import 'package:fpdart/src/task_either.dart';

import 'i_shows_interactor.dart';
import 'i_shows_repository.dart';
import 'show.dart';

class ShowsInteractor extends IShowsInteractor {
  final IShowsRepository _showsRepository;

  ShowsInteractor(this._showsRepository);

  @override
  TaskEither<Object, List<Show>> getShows() {
    return _showsRepository.getShows();
  }
}
