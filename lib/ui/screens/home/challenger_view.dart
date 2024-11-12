import 'package:challenge_365d/domain/models/challenger_card.dart';
import 'package:challenge_365d/ui/screens/home/challenge_view.dart';
import 'package:flutter/material.dart';

class ChallengerView extends StatelessWidget {
  final Challenger challenger;

  const ChallengerView({super.key, required this.challenger});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Challenger name
        SizedBox(
          width: 100,
          child: Text(
            challenger.name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // Vertical divider
        SizedBox(
            height: 40.0 * challenger.challenges.length.toDouble(),
            child: const VerticalDivider(thickness: 1, color: Colors.grey)),

        // List of challenges
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: challenger.challenges.map((challenge) {
                return ChallengeView(
                    name: challenge.name, completed: challenge.completed);
              }).toList(),
            ),
          ),
        )
      ],
    );
  }
}
