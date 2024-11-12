import 'package:freezed_annotation/freezed_annotation.dart';

part 'challenger_card.freezed.dart';

@freezed
class Challenger with _$Challenger {
  const factory Challenger(
      {required String name,
      required List<Challenge> challenges,
      required int failures}) = _Challenger;
}

@freezed
class Challenge with _$Challenge {
  const factory Challenge({required String name, required bool completed}) =
      _Challenge;
}
