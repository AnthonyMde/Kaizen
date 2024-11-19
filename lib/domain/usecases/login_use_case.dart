import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/domain/errors/login_errors.dart';
import 'package:kaizen/domain/models/challenger.dart';

import '../../data/repositories/providers/login_repository_provider.dart';

class LoginUseCase {
  final authorizedUsers = [
    const Challenger(id: '1', name: 'Towny', challenges: [], failures: 0),
    const Challenger(id: '2', name: 'Clowy', challenges: [], failures: 0),
    const Challenger(id: '3', name: 'Jack', challenges: [], failures: 0),
  ];
  final Ref ref;

  LoginUseCase(this.ref);

  Future<void> call(String name) {
    if (name.trim().isEmpty) {
      throw LoginError.isNameEmpty();
    }

    if (!authorizedUsers.map((user) => user.name).contains(name)) {
      throw LoginError.unauthorized();
    }

    return ref
        .read(accountRepositoryProvider)
        .login(authorizedUsers.firstWhere((user) => user.name == name));
  }
}
