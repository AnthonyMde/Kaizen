import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/domain/usecases/providers/get_account_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/models/challenger.dart';
import '../../../data/repositories/providers/challenger_repository_provider.dart';

part 'challenger_actions.g.dart';

@riverpod
ChallengerActions challengerActions(Ref ref) {
  return ChallengerActions(ref);
}

class ChallengerActions {
  final Ref ref;

  ChallengerActions(this.ref);

  Future<void> toggleChallengeState(
      String challengerId, Challenge challenge) async {
    final account = await ref.read(getAccountUseCaseProvider).call();
    // TODO show toast
    // TODO move to use case?
    if (account == null || account.id != challengerId) {
      return;
    }
    await ref
        .read(challengerRepositoryProvider)
        .toggleChallengeState(challengerId, challenge);
  }
}
