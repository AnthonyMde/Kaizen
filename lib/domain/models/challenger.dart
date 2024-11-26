import 'package:freezed_annotation/freezed_annotation.dart';

part 'challenger.freezed.dart';
part 'challenger.g.dart';

@freezed
class Challenger with _$Challenger {
  const factory Challenger({
    required String id,
    required String name,
    required List<Challenge> challenges,
    required bool isWasted,
  }) = _Challenger;

  factory Challenger.fromJson(Map<String, dynamic> json) =>
      _$ChallengerFromJson(json);
}

@freezed
class Challenge with _$Challenge {
  const factory Challenge({
    required String id,
    required String name,
    required bool isCompleted,
    required int failures,
    required int maxFailures,
  }) = _Challenge;

  factory Challenge.fromJson(Map<String, dynamic> json) =>
      _$ChallengeFromJson(json);
}
