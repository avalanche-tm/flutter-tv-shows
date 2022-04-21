import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../routing/routes.dart';
import 'navigator_provider.dart';

final httpProvider = Provider((ref) {
  // TODO: make provider accept baseUrl as argument
  final navigatorKey = ref.watch(navigatorProvider);
  final client = Dio(BaseOptions(baseUrl: 'https://api.infinum.academy/api'));

  client.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
    // Do something before request is sent
    return handler.next(options); //continue
    // If you want to resolve the request with some custom data，
    // you can resolve a `Response` object eg: `handler.resolve(response)`.
    // If you want to reject the request with a error message,
    // you can reject a `DioError` object eg: `handler.reject(dioError)`
  }, onResponse: (response, handler) {
    if (response.statusCode == 401 || response.statusCode == 403) {
      //TODO: show message on login that session has expired
      navigatorKey!.currentState
          ?.pushNamedAndRemoveUntil(AppRoute.login, (route) => false);
    }
    // Do something with response data
    return handler.next(response); // continue
    // If you want to reject the request with a error message,
    // you can reject a `DioError` object eg: `handler.reject(dioError)`
  }, onError: (DioError e, handler) {
    // Do something with response error
    return handler.next(e); //continue
    // If you want to resolve the request with some custom data，
    // you can resolve a `Response` object eg: `handler.resolve(response)`.
  }));
  return client;
});
