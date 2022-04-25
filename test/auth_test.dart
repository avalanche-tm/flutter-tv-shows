// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tv_shows/app/app_config.default.dart';
import 'package:flutter_tv_shows/data/auth/auth_repository.dart';
import 'package:flutter_tv_shows/data/shows/shows_repository.dart';
import 'package:flutter_tv_shows/data/storage/secure_storage_repository.dart';
import 'package:flutter_tv_shows/domain/auth/auth_interactor.dart';

class A {
  Map<String, dynamic>? data;
  A(this.data);
}

void main() {
  test('login', () async {
    final client = Dio(BaseOptions(baseUrl: 'https://api.infinum.academy/api'));
    client.interceptors.add(CurlLoggerDioInterceptor(printOnSuccess: true));
    final repo = AuthRepository(client);
    final storage = SecureStorageRepository();
    final interactor = AuthInteractor(repo, storage);
    final appConfig = AppConfigDefault();
    final showsRepo = ShowsRepository(client, appConfig);
    // try {
    // final res = await interactor.login('test', 'test', true).run();
    final res2 = await showsRepo.getShows().run();
    debugPrint(res2.toString());
    const c = 3;
    // } on Exception catch (e) {
    //   debugPrint(e.toString());
    // }
    const a = 0;
  });

  test('appConfig', () {
    final res = A(<String, dynamic>{});
    // const res = null;

    try {
      final a = res.data?['data'] as List<dynamic>;
      debugPrint(a[0]);
    } on Exception catch (e) {
      final error = e;
      debugPrint(e.toString());
    }
  });
}
