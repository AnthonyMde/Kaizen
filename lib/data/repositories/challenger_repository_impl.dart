import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:kaizen/domain/models/challenger.dart';
import 'package:kaizen/domain/repositories/challenger_repository.dart';

const challengersCollectionKey = 'challengers';
const challengesCollectionKey = 'challenges';

class ChallengerRepositoryImpl implements ChallengerRepository {
  final FirebaseFirestore firestoreInstance = FirebaseFirestore.instance;

  @override
  Future<void> toggleChallengeState(
      String challengerId, Challenge challenge) async {
    final newStatus = !challenge.completed;

    await firestoreInstance
        .collection(challengersCollectionKey)
        .doc(challengerId)
        .collection(challengesCollectionKey)
        .doc(challenge.id)
        .update({"completed": newStatus}).catchError((error) => debugPrint(
            "Failed to update challenge ${challenge.name} $error"));
  }

  @override
  Stream<List<Challenger>> watchChallengers() {
    return firestoreInstance
        .collection(challengersCollectionKey)
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => _toChallenger(doc)).toList());
  }

  @override
  Stream<List<Challenge>> watchChallenges(String challengerId) {
    return firestoreInstance
        .collection(challengersCollectionKey)
        .doc(challengerId)
        .collection(challengesCollectionKey)
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => _toChallenge(doc)).toList());
  }

  Challenger _toChallenger(QueryDocumentSnapshot doc) {
    return Challenger(
        id: doc['id'] as String,
        name: doc['name'] as String,
        failures: doc['failures'] as int,
        challenges: []);
  }

  Challenge _toChallenge(QueryDocumentSnapshot doc) {
    return Challenge(
        id: doc['id'] as String,
        name: doc['name'] as String,
        completed: doc['completed'] as bool);
  }
}
