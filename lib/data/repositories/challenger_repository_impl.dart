import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:kaizen/domain/models/challenger.dart';
import 'package:kaizen/domain/repositories/challenger_repository.dart';

const challengersCollectionKey = 'challengers';
const challengesCollectionKey = 'challenges';

class ChallengerRepositoryImpl implements ChallengerRepository {
  final FirebaseFirestore firestoreInstance = FirebaseFirestore.instance;

  @override
  Future<List<Challenger>> getAllChallengers() async {
    final collection =
        await firestoreInstance.collection(challengersCollectionKey).get();

    final challengers =
        collection.docs.map((doc) => toChallenger(doc)).toList();

    final challengersWithChallenges =
        await Future.wait(challengers.map((challenger) async {
      final challengeSnapshots = await firestoreInstance
          .collection(challengersCollectionKey)
          .doc(challenger.id.toString())
          .collection(challengesCollectionKey)
          .get();
      final challenges =
          challengeSnapshots.docs.map((doc) => toChallenge(doc)).toList();
      return challenger.copyWith(challenges: challenges);
    }).toList());

    return challengersWithChallenges;
  }

  Challenger toChallenger(QueryDocumentSnapshot doc) {
    return Challenger(
        id: doc['id'] as String,
        name: doc['name'] as String,
        failures: doc['failures'] as int,
        challenges: []);
  }

  Challenge toChallenge(QueryDocumentSnapshot doc) {
    return Challenge(
        id: doc['id'] as String,
        name: doc['name'] as String,
        completed: doc['completed'] as bool);
  }

  @override
  Future<void> toggleChallengeState(
      String challengerId, Challenge challenge) async {
    final newStatus = !challenge.completed;

    try {
      await firestoreInstance
          .collection(challengersCollectionKey)
          .doc(challengerId)
          .collection(challengesCollectionKey)
          .doc(challenge.id)
          .update({"completed": newStatus});

      debugPrint("Challenge has been updated to $newStatus");
    } catch (e) {
      debugPrint("Failed to update challenge ${challenge.name} $e");
    }
  }
}
