import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/auth/auth_repository.dart';
import '../../domain/auth/i_auth_repository.dart';
import '../providers/http_provider.dart';

final authRepositoryProvider = Provider<IAuthRepository>(
  (ref) => AuthRepository(ref.watch(httpProvider)),
);
