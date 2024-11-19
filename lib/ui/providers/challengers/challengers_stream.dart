import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/data/repositories/providers/login_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/providers/challenger_repository_provider.dart';
import '../../../domain/models/challenger.dart';

part 'challengers_stream.g.dart';

@riverpod
Stream<List<Challenger>> challengersStream(Ref ref) {
  return ref
      .read(challengerRepositoryProvider)
      .watchChallengers()
      .asyncMap((challengers) async {
    final account = await ref.read(accountRepositoryProvider).getAccount();
    // TODO move sorting logic to dedicated a use case.
    if (account == null) {
      return challengers;
    } else {
      final sortedChallengers = challengers
        ..sort((a, b) {
          if (a.id == account.id) return -1;
          if (b.id == account.id) return 1;
          return a.id.compareTo(b.id);
        });
      return sortedChallengers.map((challenger) {
        if (challenger.id == account.id) {
          return challenger.copyWith(name: "Me");
        } else {
          return challenger;
        }
      }).toList();
    }
  });
}
