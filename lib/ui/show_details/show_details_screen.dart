import 'dart:async';

import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../app/app_theme/app_theme_widget.dart';
import '../../app/gen/assets.gen.dart';
import '../../app/theme.dart';
import '../../domain/shows/show_details.dart';
import '../../domain/shows/show_episode.dart';
import '../hooks/post_frame_call_hook.dart';
import '../shows/show_details_state.dart';
import '../shows/show_episodes_state.dart';
import '../widgets/simple_snackbar.dart';
import 'fading_gradient_effect.dart';
import '../hooks/fade_in_animation_hook.dart';
import '../shows/show_details_provider.dart';
import '../shows/show_episodes_provider.dart';

part 'show_details_screen.g.dart';

@hcwidget
Widget showDetailsScreen(BuildContext context, WidgetRef ref, String showId) {
  usePostFrameCall(() {
    ref.read(showDetailsProvider.notifier).getShowDetails(showId);
    ref.read(showEpisodesProvider.notifier).getShowEpisodes(showId);
  });

  ref.listen<ShowDetailsState>(showDetailsProvider, (previous, next) {
    next.whenOrNull(
      error: (errorMsg, items) => _showSnackBarError(context, errorMsg),
    );
  });

  ref.listen<ShowEpisodesState>(showEpisodesProvider, (previous, next) {
    next.whenOrNull(
      error: (errorMsg, items) => _showSnackBarError(context, errorMsg),
    );
  });

  return Scaffold(
    backgroundColor: context.customTheme.customColor,
    body: SafeArea(
      top: false,
      child: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              floating: true,
              pinned: true,
              expandedHeight: 450,
              collapsedHeight: 250,
              elevation: 0,
              backgroundColor: Colors.white,
              flexibleSpace: _HeaderSection(showId),
              leading: IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).clearSnackBars();
                  Navigator.of(context).pop();
                },
                icon: Assets.icons.icNavigateBack.svg(),
                iconSize: 40,
              ),
            ),
          ];
        },
        body: RefreshIndicator(
          onRefresh: () {
            return Future.wait([
              ref.read(showDetailsProvider.notifier).getShowDetails(
                    showId,
                    pullRefresh: true,
                  ),
              ref.read(showEpisodesProvider.notifier).getShowEpisodes(
                    showId,
                    pullRefresh: true,
                  ),
            ]);
          },
          child: _EpisodesSection(showId),
        ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        final themeManager = AppTheme.of<CustomTheme>(context);
        if (themeManager.id == AppThemes.green) {
          AppTheme.of(context).setTheme(AppThemes.pink, ThemeMode.dark);
          return;
        }
        if (themeManager.id == AppThemes.pink) {
          AppTheme.of(context).setTheme(AppThemes.green, ThemeMode.dark);
          return;
        }
      },
      child: const Icon(Icons.add),
    ),
  );
}

@hcwidget
Widget __headerSection(BuildContext context, WidgetRef ref, String showId) {
  final details = ref.watch(showDetailsProvider);

  return details.when(
    data: (data) => data == null //
        ? const SizedBox.expand()
        : _Header(data),
    error: (error, data) {
      return data == null //
          ? const SizedBox.expand()
          : _Header(data);
    },
    loading: (data) => const SizedBox.expand(),
  );
}

@hcwidget
Widget __header(BuildContext context, WidgetRef ref, ShowDetails data) {
  final animation = useFadeInAnimation();
  return Column(
    children: [
      Expanded(
        child: Stack(
          children: [
            Positioned.fill(
              child: CustomPaint(
                foregroundPainter: FadingGradientEffect(),
                child: FadeInImage.assetNetwork(
                  fit: BoxFit.cover,
                  image: data.imageUrl,
                  placeholder: Assets.images.imgPlaceholder.path,
                  placeholderFit: BoxFit.cover,
                  imageErrorBuilder: (context, _, __) => Container(
                    color: Colors.grey.shade100,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      FadeTransition(
        opacity: animation,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  data.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  data.description,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

@hcwidget
Widget __episodesSection(BuildContext context, WidgetRef ref, String showId) {
  final episodes = ref.watch(showEpisodesProvider);

  return episodes.when(
    data: (data) => data.isEmpty
        ? const Center(child: Text('No items :('))
        : _EpisodesList(data),
    error: (error, data) {
      return data.isEmpty
          ? const Center(child: Text('No items :('))
          : _EpisodesList(data);
    },
    loading: (data) => const Center(child: CircularProgressIndicator()),
  );
}

@hcwidget
Widget __episodesList(
    BuildContext context, WidgetRef ref, ShowEpisodes episodes) {
  final animation = useFadeInAnimation();

  return FadeTransition(
    opacity: animation,
    child: ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: episodes.length + 1,
      itemBuilder: (context, index) {
        final adjustedIdx = index - 1 >= 0 ? index - 1 : 0;
        final item = episodes[adjustedIdx];
        return index == 0 //
            ? _EpisodesHeader(episodes)
            : _EpisodeListItem(item);
      },
    ),
  );
}

@swidget
Widget __episodesHeader(BuildContext context, ShowEpisodes episodes) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Episodes',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        Text(
          episodes.length.toString(),
          style: Theme.of(context).textTheme.bodyLarge,
        )
      ],
    ),
  );
}

@swidget
Widget __episodeListItem(BuildContext context, ShowEpisode item) {
  return InkWell(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.fromLTRB(20, 17, 23, 17),
      child: SizedBox(
        height: 25,
        child: Row(
          children: [
            SizedBox(
              width: 80,
              child: Text(
                'S${item.season} Ep${item.episodeNumber}',
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            Expanded(
              child: Text(
                item.title,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Assets.icons.icNavigationChevronRightMedium.svg()
          ],
        ),
      ),
    ),
  );
}

void _showSnackBarError(BuildContext context, String errorMsg) {
  final snackBar = simpleSnackBar(errorMsg);
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
