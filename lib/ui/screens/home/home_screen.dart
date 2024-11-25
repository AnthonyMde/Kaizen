import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:kaizen/data/repositories/providers/date_repository_provider.dart';
import 'package:kaizen/ui/providers/challengers/challenger_actions.dart';
import 'package:kaizen/ui/screens/home/challenger_view.dart';
import 'package:kaizen/ui/screens/home/challengers_skeleton.dart';
import 'package:kaizen/ui/screens/home/header.dart';

import '../../providers/challengers/challengers_stream.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateService = ref.read(dateRepositoryProvider);
    final currentChallengersStream = ref.watch(currentChallengerStreamProvider);
    final otherChallengersStream = ref.watch(otherChallengersStreamProvider);

    final now = dateService.getCurrentUTCDate();
    final formattedDate = DateFormat("EEE, dd MMMM yyyy", "en_US").format(now);
    final pastDays = dateService.getPastChallengeDays();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              SizedBox(height: Platform.isIOS ? 0 : 32),
              Header(
                  formattedDate: formattedDate, pastDays: pastDays.toString()),
              const SizedBox(height: 32),
              currentChallengersStream.when(
                data: (challenger) {
                  if (challenger == null) {
                    return const SizedBox();
                  }
                  return Column(
                    children: [
                      ChallengerView(
                          isCurrentChallenger: true,
                          challenger: challenger,
                          onToggleChallenge: (challenge) {
                            ref
                                .read(challengerActionsProvider)
                                .toggleChallengeState(challenger.id, challenge);
                          }),
                      const Divider(),
                    ],
                  );
                },
                error: (e, stack) => Expanded(
                  child: Text(
                      'Oops, something unexpected happened ${e.toString()}'),
                ),
                loading: () => const ChallengersSkeleton(),
              ),
              Expanded(
                  child: otherChallengersStream.when(
                      data: (challengers) => ListView.separated(
                            shrinkWrap: true,
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 8),
                            itemCount: challengers.length,
                            itemBuilder: (context, index) => ChallengerView(
                                challenger: challengers[index],
                                onToggleChallenge: (challenge) {
                                  ref
                                      .read(challengerActionsProvider)
                                      .toggleChallengeState(
                                          challengers[index].id, challenge);
                                }),
                          ),
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
