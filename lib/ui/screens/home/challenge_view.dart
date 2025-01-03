import 'package:flutter/material.dart';
import 'package:kaizen/domain/models/challenger.dart';
import 'package:kaizen/theme/colors_extension.dart';

class ChallengeView extends StatelessWidget {
  final Challenge challenge;
  final void Function(Challenge) onToggle;

  const ChallengeView({
    super.key,
    required this.challenge,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              color:
                  challenge.isCompleted ? colorScheme.done : colorScheme.todo,
              borderRadius: BorderRadius.circular(8.0)),
          child: Row(
            children: [
              Checkbox(
                value: challenge.isCompleted,
                onChanged: (checked) {
                  onToggle(challenge);
                },
                activeColor: Colors.white,
                checkColor: colorScheme.done,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  challenge.name,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: colorScheme.onChallengeCard),
                ),
              )
            ],
          ),
        ),
        if (challenge.isFailed) ...[
          Positioned.fill(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color.fromARGB(185, 0, 0, 0),
                  ),
                ),
                const Center(
                  child: Text(
                    "Fail",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]
      ],
    );
  }
}
