import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/data/local/providers/users_local_db_provider.dart';
import 'package:kaizen/domain/repositories/login_repository.dart';

import '../../domain/models/challenger.dart';

class AccountRepositoryImpl implements AccountRepository {
  final Ref ref;

  AccountRepositoryImpl(this.ref);

  @override
  Future<void> login(Challenger challenger) async {
    await ref.read(usersLocalDBProvider).saveAccount(challenger);
    return;
  }

  @override
  Future<Challenger?> getAccount() {
    return ref.read(usersLocalDBProvider).getAccount();
  }
}
