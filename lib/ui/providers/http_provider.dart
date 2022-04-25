import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../routing/routes.dart';
import 'app_config_provider.dart';
import 'navigator_provider.dart';

final httpProvider = Provider((ref) {
  final appConfig = ref.watch(appConfigProvider);
  final navigatorKey = ref.watch(navigatorProvider);
  final client = Dio(BaseOptions(baseUrl: appConfig.apiUrl));

  client.interceptors.add(
    InterceptorsWrapper(onError: (DioError e, handler) {
      if (e.response?.statusCode == 401 || e.response?.statusCode == 403) {
        navigatorKey.currentState
            ?.pushNamedAndRemoveUntil(AppRoute.login, (route) => false);
        // Optionally: show message on login that session has expired
      }
      return handler.next(e);
    }, onRequest: (options, handler) {
      return handler.next(options);
    }, onResponse: (response, handler) {
      return handler.next(response);
    }),
  );

  client.interceptors.add(CurlLoggerDioInterceptor(printOnSuccess: true));
  return client;
});
