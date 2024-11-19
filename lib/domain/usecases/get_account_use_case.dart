import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/data/repositories/providers/login_repository_provider.dart';

import '../models/challenger.dart';

class GetAccountUseCase {
  final Ref ref;

  GetAccountUseCase(this.ref);

  Future<Challenger?> call() {
    return ref.read(accountRepositoryProvider).getAccount();
  }
}
