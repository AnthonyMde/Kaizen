import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/domain/models/challenger.dart';
import 'package:kaizen/providers/repositories/challenger_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'challenges_stream.g.dart';

@riverpod
Stream<List<Challenge>> challengesStream(Ref ref, String challengerId) {
  return ref.read(challengerRepositoryProvider).watchChallenges(challengerId);
}
