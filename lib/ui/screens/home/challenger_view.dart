import 'package:kaizen/domain/models/challenger.dart';
import 'package:kaizen/ui/screens/home/challenge_view.dart';
import 'package:flutter/material.dart';

class ChallengerView extends StatelessWidget {
  final Challenger challenger;
  final void Function(String) onToggleChallenge;

  const ChallengerView(
      {super.key, required this.challenger, required this.onToggleChallenge});

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
            child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => const SizedBox(height: 8),
              itemCount: challenger.challenges.length,
              itemBuilder: (context, index) {
                return ChallengeView(
                    name: challenger.challenges[index].name,
                    completed: challenger.challenges[index].completed,
                    onToggle: onToggleChallenge);
              },
            ),
          ),
        )
      ],
    );
  }
}
