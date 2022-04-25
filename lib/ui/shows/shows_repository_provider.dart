import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/shows/shows_repository.dart';
import '../providers/app_config_provider.dart';
import '../providers/http_provider.dart';

final showsRepositoryProvider = Provider(
  (ref) =>
      ShowsRepository(ref.watch(httpProvider), ref.watch(appConfigProvider)),
);
