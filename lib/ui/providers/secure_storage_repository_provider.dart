import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/storage/secure_storage_repository.dart';
import '../../domain/storage/i_secure_storage_repository.dart';

final secureStorageRepositoryProvider = Provider<ISecureStorageRepository>(
  (ref) => SecureStorageRepository(),
);
