import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../domain/shows/i_shows_repository.dart';
import '../../domain/shows/show.dart';
import '../../domain/shows/show_details.dart';
import '../../domain/shows/show_episode.dart';

class ShowsRepository extends IShowsRepository {
  final Dio _httpClient;

  ShowsRepository(this._httpClient);

  @override
  TaskEither<Object, List<Show>> getShows() {
    return TaskEither.tryCatch(
      () => _getShows(),
      (error, stackTrace) => error,
    ).map((res) {
      final list = res.data['data'] as List<dynamic>;
      final shows = list.map((e) => Show.fromJson(e)).toList();
      return shows;
    });
  }

  @override
  TaskEither<Object, ShowDetails> getShowDetails(String showId) {
    return TaskEither.tryCatch(
      () => _getShowDetails(showId),
      (error, stackTrace) => error,
    )
        .map((res) => res.data['data'] as Map<String, dynamic>)
        .map((json) => ShowDetails.fromJson(json).fixRandomErrors());
  }

  @override
  TaskEither<Object, List<ShowEpisode>> getShowEpisodes(String showId) {
    return TaskEither.tryCatch(
      () => _getShowEpisodes(showId),
      (error, stackTrace) => error,
    )
        .map((res) => res.data['data'] as List<dynamic>) //
        .map((eps) => eps.map((e) => ShowEpisode.fromJson(e)))
        .map((eps) => eps.map((e) => e.fixRandomErrors()).toList());
  }

  Future<Response<dynamic>> _getShows() {
    const apiPath = '/shows';
    return _httpClient.get(apiPath);
  }

  Future<Response<dynamic>> _getShowDetails(String showId) {
    final apiPath = '/shows/$showId';
    return _httpClient.get(apiPath);
  }

  Future<Response<dynamic>> _getShowEpisodes(String showId) {
    final apiPath = '/shows/$showId/episodes';
    return _httpClient.get(apiPath);
  }
}
