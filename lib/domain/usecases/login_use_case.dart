import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/domain/errors/login_errors.dart';
import 'package:kaizen/providers/repositories/login_repository_provider.dart';

class LoginUseCase {
  final authorizedUsers = ['Towny', 'Jack', 'Clowy'];
  final Ref ref;

  LoginUseCase(this.ref);

  Future<void> call(String name) {
    if (name.trim().isEmpty) {
      throw LoginError.isNameEmpty();
    }

    if (!authorizedUsers.contains(name)) {
      throw LoginError.unauthorized();
    }

    return ref.read(accountRepositoryProvider).login(name);
  }
}
