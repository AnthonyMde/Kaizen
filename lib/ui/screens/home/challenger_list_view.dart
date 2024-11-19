import 'package:flutter/cupertino.dart';

import '../../../domain/models/challenger.dart';
import 'challenger_view.dart';

class ChallengerListView extends StatelessWidget {
  final List<Challenger> challengers;
  final void Function(String, Challenge) onToggleChallenge;

  const ChallengerListView(
      {super.key, required this.challengers, required this.onToggleChallenge});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) => const SizedBox(height: 8),
      itemCount: challengers.length,
      itemBuilder: (context, index) => ChallengerView(
          challenger: challengers[index],
          onToggleChallenge: (challenge) {
            onToggleChallenge(challengers[index].id, challenge);
          }),
    );
  }
}
