import 'package:challenge_365d/domain/models/challenger_card.dart';
import 'package:challenge_365d/providers/date_provider.dart';
import 'package:challenge_365d/ui/screens/home/challenger_view.dart';
import 'package:challenge_365d/ui/screens/home/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateService = ref.watch(dateServiceProvider);

    final now = dateService.getCurrentUTCDate();
    final formattedDate = DateFormat("EEE, dd MMMM yyyy", "en_US").format(now);
    final pastDays = dateService.getPastChallengeDays();

    final challengers = [
      const Challenger(
          name: "Towny",
          challenges: [
            Challenge(name: "Programming", completed: true),
            Challenge(name: "Writing", completed: false)
          ],
          failures: 0),
      const Challenger(
          name: "Princess",
          challenges: [
            Challenge(name: "Reading", completed: true),
          ],
          failures: 0),
      const Challenger(
          name: "Jack",
          challenges: [
            Challenge(name: "Dance", completed: true),
            Challenge(name: "Side projects", completed: false)
          ],
          failures: 0),
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 16.0),
              Header(
                  formattedDate: formattedDate, pastDays: pastDays.toString()),
              const SizedBox(height: 16.0),
              for (int i = 0; i < challengers.length; i++) ...[
                ChallengerView(challenger: challengers[i]),
                if (i < challengers.length - 1)
                  const SizedBox(height: 8),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
