import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/models/challenger.dart';
import 'challenger_repository_provider.dart';

part 'challengers_stream.g.dart';

@riverpod
Stream<List<Challenger>> challengersStream(Ref ref) {
  return ref.read(challengerRepositoryProvider).watchChallengers();
}
