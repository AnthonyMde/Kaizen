import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/providers/login_repository_provider.dart';

class CheckUserLoggedInUseCase {
  final Ref ref;

  CheckUserLoggedInUseCase(this.ref);

  Future<bool> call() async {
    final account = await ref.read(accountRepositoryProvider).getAccount();
    return account != null;
  }
}
