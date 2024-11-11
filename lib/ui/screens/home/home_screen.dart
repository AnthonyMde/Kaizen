import 'package:challenge_365d/providers/date_provider.dart';
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

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 16.0, top: 16.0, right: 16.0, bottom: 16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 16.0),
                Header(
                    formattedDate: formattedDate, pastDays: pastDays.toString())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
