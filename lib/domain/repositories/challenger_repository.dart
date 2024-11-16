import '../models/challenger.dart';

abstract class ChallengerRepository {
  Future<List<Challenger>> getAllChallengers();
  Future<void> toggleChallengeState(String challengerId, Challenge challenge);
}