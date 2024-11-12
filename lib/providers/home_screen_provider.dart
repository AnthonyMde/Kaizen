import 'package:kaizen/domain/models/challenger.dart';
import 'package:kaizen/ui/screens/home/home_screen_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

List<Challenger> getMockedChallengers = [
  const Challenger(
      id: 1,
      name: "Towny",
      challenges: [
        Challenge(name: "Programming", completed: true),
        Challenge(name: "Writing", completed: false)
      ],
      failures: 0),
  const Challenger(
      id: 2,
      name: "Princess",
      challenges: [
        Challenge(name: "Reading", completed: true),
      ],
      failures: 0),
  const Challenger(
      id: 3,
      name: "Jack",
      challenges: [
        Challenge(name: "Dance", completed: true),
        Challenge(name: "Side projects", completed: false)
      ],
      failures: 0),
];

class HomeScreenNotifier extends StateNotifier<HomeScreenState> {
  HomeScreenNotifier() : super(HomeScreenState(challengers: getMockedChallengers));

  void updateChallenger(Challenger challenger) {
    state = state.copyWith(
        challengers: state.challengers
            .map((c) => c.id == challenger.id ? challenger : c)
            .toList());
  }

  void toggleChallengeState(Challenger challenger, String challengeName) {
    final updatedChallenges = challenger.challenges
        .map((c) =>
            c.name == challengeName ? c.copyWith(completed: !c.completed) : c)
        .toList();
    final updatedChallenger =
        challenger.copyWith(challenges: updatedChallenges);

    updateChallenger(updatedChallenger);
  }
}

final homeScreenProvider =
    StateNotifierProvider<HomeScreenNotifier, HomeScreenState>(
        (ref) => HomeScreenNotifier());
