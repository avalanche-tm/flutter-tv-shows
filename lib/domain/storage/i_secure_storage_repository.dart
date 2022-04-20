import 'package:fpdart/fpdart.dart';

abstract class ISecureStorageRepository {
  TaskEither<Object, String?> read(String key);
  TaskEither<Object, Unit> write(String key, String value);
  TaskEither<Object, Unit> delete(String key);
  TaskEither<Object, Unit> deleteAll();
}
