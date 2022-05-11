import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/auth/auth_interactor.dart';
import '../providers/secure_storage_repository_provider.dart';
import 'auth_repository_provider.dart';

final authInteractorProvider = Provider(
  (ref) {
    return AuthInteractor(
      ref.watch(authRepositoryProvider),
      ref.watch(secureStorageRepositoryProvider),
    );
  },
);
