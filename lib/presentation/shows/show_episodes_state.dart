import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/shows/show_episode.dart';

part 'show_episodes_state.freezed.dart';
part 'show_episodes_state.g.dart';

@freezed
class ShowEpisodesState with _$ShowEpisodesState {
  factory ShowEpisodesState.loading(ShowEpisodes episodes) =
      _ShowEpisodesStateLoading;
  factory ShowEpisodesState.data(ShowEpisodes episodes) =
      _ShowEpisodesStateData;
  factory ShowEpisodesState.error(String errorMsg, ShowEpisodes episodes) =
      _ShowEpisodesStateError;

  factory ShowEpisodesState.fromJson(Map<String, dynamic> json) =>
      _$ShowEpisodesStateFromJson(json);
}
