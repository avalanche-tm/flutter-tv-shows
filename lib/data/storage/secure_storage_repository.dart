import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fpdart/fpdart.dart';

import '../../domain/storage/i_secure_storage_repository.dart';

class SecureStorageRepository extends ISecureStorageRepository {
  final _storage = const FlutterSecureStorage();

  @override
  TaskEither<Object, String?> read(String key) {
    return TaskEither.tryCatch(
      () => _storage.read(key: key),
      (error, stackTrace) => error,
    );
  }

  @override
  TaskEither<Object, Unit> write(String key, String value) {
    return TaskEither.tryCatch(
      () => _storage.write(key: key, value: value),
      (error, stackTrace) => error,
    ).map((r) => unit);
  }

  @override
  TaskEither<Object, Unit> delete(String key) {
    return TaskEither.tryCatch(
      () => _storage.delete(key: key),
      (error, stackTrace) => error,
    ).map((r) => unit);
  }

  @override
  TaskEither<Object, Unit> deleteAll() {
    return TaskEither.tryCatch(
      () => _storage.deleteAll(),
      (error, stackTrace) => error,
    ).map((r) => unit);
  }
}
