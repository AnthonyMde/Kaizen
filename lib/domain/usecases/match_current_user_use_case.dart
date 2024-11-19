import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/data/repositories/providers/login_repository_provider.dart';

class MatchCurrentUserUseCase {
  final Ref ref;

  MatchCurrentUserUseCase(this.ref);

  Future<bool> call(String id) async {
    final account = await ref.read(accountRepositoryProvider).getAccount();

    if (account == null) return false;

    return account.id == id;
  }
}