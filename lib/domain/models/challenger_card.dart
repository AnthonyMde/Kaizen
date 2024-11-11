import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'challenger_card.freezed.dart';

@freezed
class ChallengerCard with _$ChallengerCard {
  const factory ChallengerCard(
      {required String challengerName,
      required List<Challenge> challenges,
      required int failureCount}) = _ChallengerCard;
}

@freezed
class Challenge with _$Challenge {
  const factory Challenge({required String name, required bool isDone}) =
      _Challenge;
}
