import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header(
      {super.key, required this.formattedDate, required this.pastDays});

  final String formattedDate;
  final String pastDays;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          formattedDate,
          style: const TextStyle(
              fontSize: 20, fontStyle: FontStyle.italic, color: Colors.black87),
        ),
        Text(
          "Day ${pastDays.toString()}",
          style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrangeAccent),
        ),
      ],
    );
  }
}
