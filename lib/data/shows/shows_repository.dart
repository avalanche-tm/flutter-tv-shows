import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../domain/shows/i_shows_repository.dart';
import '../../domain/shows/show.dart';

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

  // @override
  // Future<Either<Object, String?>> login(String email, String password) async {
  //   return await TaskEither.tryCatch(
  //     () => _loginWithEmail(email, password),
  //     (error, stackTrace) => error,
  //   ).map((res) => res.data?['data']['token'].toString()).run();
  // }

  Future<Response<dynamic>> _getShows() {
    const apiPath = '/shows';
    return _httpClient.get(apiPath);
  }
}
