import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/data/local/providers/users_local_db_provider.dart';
import 'package:kaizen/domain/repositories/login_repository.dart';

class AccountRepositoryImpl implements AccountRepository {
  final Ref ref;

  AccountRepositoryImpl(this.ref);

  @override
  Future<void> login(String name) async {
    await ref.read(usersLocalDBProvider).saveAccount(name);
    return;
  }

  @override
  Future<String?> getAccount() {
    return ref.read(usersLocalDBProvider).getAccount();
  }
}
