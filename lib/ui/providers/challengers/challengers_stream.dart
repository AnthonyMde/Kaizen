import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/repositories/providers/challenger_repository_provider.dart';
import '../../../domain/models/challenger.dart';

part 'challengers_stream.g.dart';

@riverpod
Stream<List<Challenger>> challengersStream(Ref ref) {
  return ref.read(challengerRepositoryProvider).watchChallengers();
}
