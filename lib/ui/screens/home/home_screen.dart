import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:kaizen/domain/models/challenger.dart';
import 'package:kaizen/providers/challenger_repository_provider.dart';
import 'package:kaizen/providers/challengers.dart';
import 'package:kaizen/providers/date_provider.dart';
import 'package:kaizen/ui/screens/home/challenger_list_view.dart';
import 'package:kaizen/ui/screens/home/header.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateService = ref.watch(dateServiceProvider);
    final AsyncValue<List<Challenger>> challengers =
        ref.watch(challengersProvider);

    final now = dateService.getCurrentUTCDate();
    final formattedDate = DateFormat("EEE, dd MMMM yyyy", "en_US").format(now);
    final pastDays = dateService.getPastChallengeDays();

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
              switch (challengers) {
                AsyncData(:final value) => ChallengerListView(
                    challengers: value,
                    onToggleChallenge: (challengerId, challenge) {
                      ref
                          .read(challengerRepositoryProvider)
                          .toggleChallengeState(challengerId, challenge);
                    }),
                AsyncError(:final error) => Text(
                    'Oops, something unexpected happened ${error.toString()}'),
                _ => const CircularProgressIndicator(),
              }
            ],
          ),
        ),
      ),
    );
  }
}
