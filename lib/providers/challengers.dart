import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/domain/models/challenger.dart';
import 'package:kaizen/providers/challenger_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'challengers.g.dart';

@riverpod
class Challengers extends _$Challengers {
  @override
  Future<List<Challenger>> build() async {
    return ref.read(challengerRepositoryProvider).getAllChallengers();
  }

  Future<void> toggleChallengeState(
      String challengerId, Challenge challenge) async {
    return ref
        .read(challengerRepositoryProvider)
        .toggleChallengeState(challengerId, challenge);
  }
}
