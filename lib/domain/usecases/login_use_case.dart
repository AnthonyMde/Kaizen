import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/data/repositories/providers/challenger_repository_provider.dart';
import 'package:kaizen/domain/errors/login_errors.dart';

import '../../data/repositories/providers/login_repository_provider.dart';

class LoginUseCase {
  final Ref ref;

  LoginUseCase(this.ref);

  Future<void> call(String name) async {
    if (name.trim().isEmpty) {
      throw LoginError.isNameEmpty();
    }

    final challengers =
        await ref.read(challengerRepositoryProvider).watchChallengers().first;

    if (!challengers.map((challenger) => challenger.name).contains(name)) {
      throw LoginError.unauthorized();
    }

    return ref
        .read(accountRepositoryProvider)
        .login(challengers.firstWhere((user) => user.name == name));
  }
}
