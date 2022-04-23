import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/shows/show_details.dart';
import 'shows_interactor_provider.dart';

final showDetailsProvider = FutureProvider.family<ShowDetails, String>(
  (ref, showId) async {
    final showDetails = await ref
        .watch(showsInteractorProvider) //
        .getShowDetails(showId)
        .run();

    return showDetails.match(
      (error) => Future.error(error.toString()),
      (data) => Future.value(data),
    );
  },
);
