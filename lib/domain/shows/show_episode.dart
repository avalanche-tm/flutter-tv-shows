import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'show_episode.freezed.dart';
part 'show_episode.g.dart';

typedef ShowEpisodes = List<ShowEpisode>;

@freezed
class ShowEpisode with _$ShowEpisode {
  const ShowEpisode._();
  factory ShowEpisode({
    @JsonKey(name: '_id') required String id,
    required String title,
    required String description,
    required String imageUrl,
    required String episodeNumber,
    required String season,
  }) = _ShowEpisode;

  factory ShowEpisode.fromJson(Map<String, dynamic> json) =>
      _$ShowEpisodeFromJson(json);

  /// Fix random value issues in API response
  ShowEpisode fixRandomErrors() {
    final random = Random();
    int episodeNum = int.tryParse(episodeNumber) ?? random.nextInt(25 - 1);
    int seasonNum = int.tryParse(season) ?? random.nextInt(17 - 1);
    return copyWith(
      episodeNumber: episodeNum.toString().padLeft(2, '0'),
      season: seasonNum.toString().padLeft(2, '0'),
      title: title.isEmpty ? 'Untitled' : title,
    );
  }
}
