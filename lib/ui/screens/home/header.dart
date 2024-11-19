import 'package:flutter/material.dart';
import 'package:kaizen/theme/colors_extension.dart';

class Header extends StatelessWidget {
  const Header(
      {super.key, required this.formattedDate, required this.pastDays});

  final String formattedDate;
  final String pastDays;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      children: [
        Text(formattedDate,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w500,
                color: colorScheme.onPrimaryContainer)),
        const SizedBox(height: 2),
        Text("Day ${pastDays.toString()}",
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: colorScheme.primaryHighlight)),
      ],
    );
  }
}
