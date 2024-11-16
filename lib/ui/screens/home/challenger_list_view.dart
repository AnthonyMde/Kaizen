import 'package:flutter/cupertino.dart';

import '../../../domain/models/challenger.dart';
import 'challenger_view.dart';

class ChallengerListView extends StatelessWidget {
  final List<Challenger> challengers;
  final void Function(String, Challenge) onToggleChallenge;

  const ChallengerListView({super.key, required this.challengers, required this.onToggleChallenge});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,children: [
      for (int i = 0; i < challengers.length; i++) ...[
        ChallengerView(
            challenger: challengers[i],
            onToggleChallenge: (challenge) {
                onToggleChallenge(challengers[i].id, challenge);
            }),
        if (i < challengers.length - 1)
          const SizedBox(height: 8),
      ],
    ],);
  }
}
