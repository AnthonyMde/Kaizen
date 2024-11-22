import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kaizen/domain/models/challenger.dart';
import 'package:kaizen/ui/screens/home/challenge_view.dart';

import '../../providers/challengers/challenges_stream.dart';

class ChallengerView extends ConsumerWidget {
  final Challenger challenger;
  final void Function(Challenge) onToggleChallenge;

  const ChallengerView(
      {super.key, required this.challenger, required this.onToggleChallenge});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final challenges = ref.watch(challengesStreamProvider(challenger.id));

    return challenges.when(
        data: (challenges) => content(challenges, context),
        error: (error, stacktrace) {
          return Text("Oops, cannot load challenges for ${challenger.name}");
        },
        loading: () {
          return content([], context);
        });
  }

  Column content(List<Challenge> challenges, BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Challenger name
        SizedBox(
          width: 100,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              challenger.name,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),

        // Vertical divider
        // SizedBox(
        //     height: 40.0 * challenges.length.toDouble(),
        //     child: const VerticalDivider(thickness: 1, color: Colors.grey)),
        SizedBox(
          width: MediaQuery.of(context).size.width / 3,
          child: Divider(
              thickness: 1, color: Theme.of(context).colorScheme.outline),
        ),

        // List of challenges
        Padding(
          padding: const EdgeInsets.all(8),
          child: ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            itemCount: challenges.length,
            itemBuilder: (context, index) {
              return ChallengeView(
                  challenge: challenges[index], onToggle: onToggleChallenge);
            },
          ),
        )
      ],
    );
  }
}
