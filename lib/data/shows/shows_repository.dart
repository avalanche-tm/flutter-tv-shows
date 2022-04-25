import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../app/app_config.dart';
import '../../domain/errors/exceptions.dart';
import '../../domain/shows/i_shows_repository.dart';
import '../../domain/shows/show.dart';
import '../../domain/shows/show_details.dart';
import '../../domain/shows/show_episode.dart';

class ShowsRepository extends IShowsRepository {
  final Dio _httpClient;
  final AppConfig _appConfig;

  ShowsRepository(this._httpClient, this._appConfig);

  @override
  TaskEither<Object, List<Show>> getShows() {
    return TaskEither.tryCatch(
      _getShows,
      _mapGetShowsError,
    )
        .flatMap(_getDataFieldAsList)
        .map(
          (shows) => shows
              .map((show) => Show.fromJson(show)) //
              .map(_prependImageUrl),
        )
        .map((shows) => shows.toList());
  }

  @override
  TaskEither<Object, ShowDetails> getShowDetails(String showId) {
    return TaskEither.tryCatch(
      () => _getShowDetails(showId),
      _mapGetShowDetailsError,
    )
        .flatMap(_getDataField)
        .map((json) => ShowDetails.fromJson(json).fixRandomErrors())
        .map((details) =>
            details.copyWith(imageUrl: _prependBaseUrl(details.imageUrl)));
  }

  @override
  TaskEither<Object, List<ShowEpisode>> getShowEpisodes(String showId) {
    return TaskEither.tryCatch(
      () => _getShowEpisodes(showId),
      _mapGetShowsEpisodesError,
    )
        .flatMap(_getDataFieldAsList) //
        .map((eps) => eps.map((e) => ShowEpisode.fromJson(e)))
        .map((eps) => eps.map((e) => e.fixRandomErrors()))
        .map((eps) => eps
            .map((e) => e.copyWith(imageUrl: _prependBaseUrl(e.imageUrl)))
            .toList());
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

  TaskEither<Object, List<dynamic>> _getDataFieldAsList(res) {
    try {
      return TaskEither.right(res.data?['data'] as List<dynamic>);
    } catch (e) {
      return TaskEither.left(e);
    }
  }

  TaskEither<Object, dynamic> _getDataField(res) {
    try {
      return TaskEither.right(res.data?['data'] as dynamic);
    } catch (e) {
      return TaskEither.left(e);
    }
  }

  String _prependBaseUrl(String input) => '${_appConfig.baseUrl}$input';

  Show _prependImageUrl(Show show) =>
      show.copyWith(imageUrl: _prependBaseUrl(show.imageUrl));

  Object _mapGetShowsError(error, stackTrace) {
    if (error is DioError) {
      // Server responded with incorrect status
      if (error.type == DioErrorType.response) {
        return ShowsErrorResponseException();
      }
    }
    return error;
  }

  Object _mapGetShowDetailsError(error, stackTrace) {
    if (error is DioError) {
      // Server responded with incorrect status
      if (error.type == DioErrorType.response) {
        return ShowDetailsErrorResponseException();
      }
    }
    return error;
  }

  Object _mapGetShowsEpisodesError(error, stackTrace) {
    if (error is DioError) {
      // Server responded with incorrect status
      if (error.type == DioErrorType.response) {
        return ShowEpisodesErrorResponseException();
      }
    }
    return error;
  }
}
