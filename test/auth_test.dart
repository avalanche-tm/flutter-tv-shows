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
import 'package:flutter_tv_shows/data/auth/auth_repository.dart';

void main() {
  test('login', () async {
    final client = Dio(BaseOptions(baseUrl: 'https://api.infinum.academy/api'));
    client.interceptors.add(CurlLoggerDioInterceptor(printOnSuccess: true));
    final repo = AuthRepository(client);
    // try {
    final res = await repo.login('ios.team@infinum.hr', 'infinum1');
    debugPrint(res.toString());
    const c = 3;
    // } on Exception catch (e) {
    //   debugPrint(e.toString());
    // }
    const a = 0;
  });
}
