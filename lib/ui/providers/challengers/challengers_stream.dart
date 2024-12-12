import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/data/repositories/providers/login_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:kaizen/data/repositories/providers/challenger_repository_provider.dart';
import 'package:kaizen/domain/models/challenger.dart';

part 'challengers_stream.g.dart';

@riverpod
Stream<List<Challenger>> challengersStream(Ref ref) {
  return ref.read(challengerRepositoryProvider).watchChallengers();
}

@riverpod
Stream<List<Challenger>> otherChallengersStream(Ref ref) async* {
  final challengers = await ref.watch(challengersStreamProvider.future);
  final account = await ref.watch(accountRepositoryProvider).getAccount();
  challengers.removeWhere((challenger) => challenger.id == account?.id);
  challengers.sort((a, b) {
    if (a.isWasted && !b.isWasted) return 1;
    if (!a.isWasted && b.isWasted) return -1;
    return 0;
  });
  yield challengers;
}

@riverpod
Stream<Challenger?> currentChallengerStream(Ref ref) async* {
  final challengers = await ref.watch(challengersStreamProvider.future);
  final account = await ref.watch(accountRepositoryProvider).getAccount();
  final c = challengers
      .firstWhereOrNull((challenger) => challenger.id == account?.id);
  yield c;
}
