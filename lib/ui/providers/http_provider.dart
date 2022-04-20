import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final httpProvider = Provider(
  (ref) => Dio(BaseOptions(baseUrl: 'https://api.infinum.academy/api')),
);
