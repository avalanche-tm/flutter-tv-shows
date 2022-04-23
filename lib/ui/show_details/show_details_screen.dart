import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/shows/show_details.dart';
import '../../domain/shows/show_episode.dart';
import '../hooks/async_value_cache_hook.dart';
import '../hooks/fade_in_animation_hook.dart';
import '../shows/show_details_provider.dart';
import '../shows/show_episodes_provider.dart';

part 'show_details_screen.g.dart';

@hcwidget
Widget showDetailsScreen(BuildContext context, WidgetRef ref, String showId) {
  return SafeArea(
    child: Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              floating: true,
              pinned: true,
              expandedHeight: 400,
              collapsedHeight: 250,
              elevation: 0,
              backgroundColor: Colors.white,
              flexibleSpace: _HeaderSection(showId),
              leading: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: SvgPicture.asset('assets/icons/ic-navigate-back.svg'),
              ),
            ),
            // SliverAppBar(
            //   floating: false,
            //   pinned: true,
            //   backgroundColor: Colors.white,
            //   automaticallyImplyLeading: false,
            //   // expandedHeight: 300,
            //   flexibleSpace:
            //       SizedBox.expand(child: _TitleAndDescription(showId)),
            //   elevation: 0,
            // ),
            // _TitleAndDescription(showId),
          ];
        },
        body: RefreshIndicator(
          onRefresh: () {
            return Future.wait([
              Future.value(ref.refresh(showDetailsProvider(showId))),
              Future.value(ref.refresh(showEpisodesProvider(showId))),
            ]);
          },
          child: _EpisodesSection(showId),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    ),
  );
}

@hcwidget
Widget __headerSection(BuildContext context, WidgetRef ref, String showId) {
  final details = ref.watch(showDetailsProvider(showId));
  final cache = useAsyncValueCache<ShowDetails?>(details, defaultValue: null);

  return details.when(
    data: (data) {
      return _Header(data);
    },
    error: (error, stackTrace) {
      _showSnackBarError(context, 'Loading show details has failed.');
      return cache == null //
          ? const SizedBox.expand()
          : _Header(cache);
    },
    loading: () => const Center(child: CircularProgressIndicator()),
  );
}

@hcwidget
Widget __header(BuildContext context, WidgetRef ref, ShowDetails data) {
  final animation = useFadeInAnimation();
  return Column(
    children: [
      Expanded(
        child: FadeTransition(
          opacity: animation,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.network(
                  'https://api.infinum.academy' + data.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(data.title),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(data.description),
            ),
          ],
        ),
      ),
    ],
  );
}

// @hcwidget
// Widget __titleAndDescription(
//     BuildContext context, WidgetRef ref, String showId) {
//   final details = ref.watch(showDetailsProvider(showId));

//   return details.maybeWhen(
//     data: (data) {
//       return Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(data.title),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(data.description),
//           ),
//         ],
//       );
//     },
//     orElse: () => const Center(child: CircularProgressIndicator()),
//   );
// }

@hcwidget
Widget __episodesSection(BuildContext context, WidgetRef ref, String showId) {
  final episodes = ref.watch(showEpisodesProvider(showId));
  final cache = useAsyncValueCache<ShowEpisodes>(episodes, defaultValue: []);

  return episodes.when(
    data: (data) => data.isEmpty
        ? const Center(child: Text('No items :('))
        : _EpisodesList(data),
    error: (error, stackTrace) {
      _showSnackBarError(context, 'Loading episodes has failed.');
      return cache.isEmpty
          ? const Center(child: Text('No items :('))
          : _EpisodesList(cache);
    },
    loading: () => const Center(child: CircularProgressIndicator()),
  );
}

@hcwidget
Widget __episodesList(
    BuildContext context, WidgetRef ref, ShowEpisodes epsisodes) {
  return ListView.builder(
    itemCount: epsisodes.length + 1,
    itemBuilder: (context, index) {
      final adjustedIdx = index - 1 >= 0 ? index - 1 : 0;
      final item = epsisodes[adjustedIdx];
      return index == 0
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('Episodes'),
                  ),
                  Text(epsisodes.length.toString())
                ],
              ),
            )
          : InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  height: 20,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 70,
                        child: Text(
                          'S${item.season} Ep${item.episodeNumber}',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          item.title,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SvgPicture.asset(
                          'assets/icons/ic-navigation-chevron-right-medium.svg')
                    ],
                  ),
                ),
              ),
            );
    },
  );
}

void _showSnackBarError(BuildContext context, String errorMsg) {
  final snackBar = SnackBar(
    content: Text(errorMsg),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
