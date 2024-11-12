import 'package:kaizen/domain/models/challenger.dart';
import 'package:kaizen/providers/date_provider.dart';
import 'package:kaizen/providers/home_screen_provider.dart';
import 'package:kaizen/ui/screens/home/challenger_view.dart';
import 'package:kaizen/ui/screens/home/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateService = ref.watch(dateServiceProvider);
    final homeState = ref.watch(homeScreenProvider);
    final homeNotifier = ref.read(homeScreenProvider.notifier);

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
              for (int i = 0; i < homeState.challengers.length; i++) ...[
                ChallengerView(
                  challenger: homeState.challengers[i],
                  onToggleChallenge: (challengeName) {
                    homeNotifier.toggleChallengeState(
                        homeState.challengers[i],
                        challengeName);
                  }),
                if (i < homeState.challengers.length - 1)
                  const SizedBox(height: 8),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
