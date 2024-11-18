import '../models/challenger.dart';

abstract class ChallengerRepository {
  Stream<List<Challenger>> watchChallengers();
  Stream<List<Challenge>> watchChallenges(String challengerId);
  Future<void> toggleChallengeState(String challengerId, Challenge challenge);
}