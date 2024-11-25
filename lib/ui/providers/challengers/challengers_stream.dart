import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/data/repositories/providers/login_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/providers/challenger_repository_provider.dart';
import '../../../domain/models/challenger.dart';

part 'challengers_stream.g.dart';

@riverpod
Stream<List<Challenger>> challengersStream(Ref ref) {
  return ref.read(challengerRepositoryProvider).watchChallengers();
}

@riverpod
Stream<List<Challenger>> otherChallengersStream(Ref ref) async* {
  final challengers = await ref.read(challengersStreamProvider.future);
  final account = await ref.read(accountRepositoryProvider).getAccount();
  if (account != null) {
    challengers.removeWhere((challenger) => challenger.id == account.id);
  }
  yield challengers;
}

@riverpod
Stream<Challenger?> currentChallengerStream(Ref ref) async* {
  final challengers = await ref.watch(challengersStreamProvider.future);
  final account = await ref.watch(accountRepositoryProvider).getAccount();
  if (account != null) {
    final currentChallenger = challengers
        .firstWhereOrNull((challenger) => challenger.id == account.id);
    if (currentChallenger != null) {
      yield currentChallenger.copyWith(name: "Me");
    }
  }
  yield null;
}
