import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/shows/shows_interactor.dart';
import 'shows_repository_provider.dart';

final showsInteractorProvider = Provider(
  (ref) => ShowsInteractor(ref.watch(showsRepositoryProvider)),
);
