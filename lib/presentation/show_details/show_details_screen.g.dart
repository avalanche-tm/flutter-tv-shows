// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_details_screen.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class ShowDetailsScreen extends HookConsumerWidget {
  const ShowDetailsScreen(this.showId, {Key? key}) : super(key: key);

  final String showId;

  @override
  Widget build(BuildContext _context, WidgetRef _ref) =>
      showDetailsScreen(_context, _ref, showId);
}

class _HeaderSection extends HookConsumerWidget {
  const _HeaderSection(this.showId, {Key? key}) : super(key: key);

  final String showId;

  @override
  Widget build(BuildContext _context, WidgetRef _ref) =>
      __headerSection(_context, _ref, showId);
}

class _Header extends HookConsumerWidget {
  const _Header(this.data, {Key? key}) : super(key: key);

  final ShowDetails data;

  @override
  Widget build(BuildContext _context, WidgetRef _ref) =>
      __header(_context, _ref, data);
}

class _EpisodesSection extends HookConsumerWidget {
  const _EpisodesSection(this.showId, {Key? key}) : super(key: key);

  final String showId;

  @override
  Widget build(BuildContext _context, WidgetRef _ref) =>
      __episodesSection(_context, _ref, showId);
}

class _EpisodesList extends HookConsumerWidget {
  const _EpisodesList(this.episodes, {Key? key}) : super(key: key);

  final List<ShowEpisode> episodes;

  @override
  Widget build(BuildContext _context, WidgetRef _ref) =>
      __episodesList(_context, _ref, episodes);
}

class _EpisodesHeader extends StatelessWidget {
  const _EpisodesHeader(this.episodes, {Key? key}) : super(key: key);

  final List<ShowEpisode> episodes;

  @override
  Widget build(BuildContext _context) => __episodesHeader(_context, episodes);
}

class _EpisodeListItem extends StatelessWidget {
  const _EpisodeListItem(this.item, {Key? key}) : super(key: key);

  final ShowEpisode item;

  @override
  Widget build(BuildContext _context) => __episodeListItem(_context, item);
}
