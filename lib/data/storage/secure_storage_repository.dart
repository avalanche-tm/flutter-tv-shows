import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fpdart/fpdart.dart';

import '../../domain/storage/i_secure_storage_repository.dart';

class SecureStorageRepository extends ISecureStorageRepository {
  final _storage = const FlutterSecureStorage();

  @override
  TaskEither<Object, String?> read(String key) {
    return TaskEither.tryCatch(
      () => _storage.read(key: key),
      _mapSecureStorageError,
    );
  }

  @override
  TaskEither<Object, Unit> write(String key, String value) {
    return TaskEither.tryCatch(
      () => _storage.write(key: key, value: value),
      _mapSecureStorageError,
    ).map((r) => unit);
  }

  @override
  TaskEither<Object, Unit> delete(String key) {
    return TaskEither.tryCatch(
      () => _storage.delete(key: key),
      _mapSecureStorageError,
    ).map((r) => unit);
  }

  @override
  TaskEither<Object, Unit> deleteAll() {
    return TaskEither.tryCatch(
      () => _storage.deleteAll(),
      _mapSecureStorageError,
    ).map((r) => unit);
  }

  Object _mapSecureStorageError(error, stackTrace) => error;
}
