import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/models/challenger.dart';
import 'repositories/challenger_repository_provider.dart';

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
    await ref
        .read(challengerRepositoryProvider)
        .toggleChallengeState(challengerId, challenge);
  }
}
