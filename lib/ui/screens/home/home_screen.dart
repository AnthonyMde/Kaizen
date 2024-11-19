import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kaizen/ui/providers/challengers/challenger_actions.dart';
import 'package:kaizen/data/repositories/providers/date_repository_provider.dart';
import 'package:kaizen/ui/screens/home/challenger_list_view.dart';
import 'package:kaizen/ui/screens/home/challengers_skeleton.dart';
import 'package:kaizen/ui/screens/home/header.dart';

import '../../providers/challengers/challengers_stream.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateService = ref.read(dateRepositoryProvider);
    final challengersStream = ref.watch(challengersStreamProvider);

    final now = dateService.getCurrentUTCDate();
    final formattedDate = DateFormat("EEE, dd MMMM yyyy", "en_US").format(now);
    final pastDays = dateService.getPastChallengeDays();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 32.0),
              Header(
                  formattedDate: formattedDate, pastDays: pastDays.toString()),
              const SizedBox(height: 32.0),
              Expanded(
                  child: challengersStream.when(
                      data: (challengers) => ChallengerListView(
                          challengers: challengers,
                          onToggleChallenge: (challengerId, challenge) {
                            ref
                                .read(challengerActionsProvider)
                                .toggleChallengeState(challengerId, challenge);
                          }),
                      error: (e, stack) => Expanded(
                            child: Text(
                                'Oops, something unexpected happened ${e.toString()}'),
                          ),
                      loading: () => const ChallengersSkeleton()))
            ],
          ),
        ),
      ),
    );
  }
}
