import 'package:flutter/material.dart';

class ChallengeView extends StatelessWidget {
  final String name;
  final bool completed;

  const ChallengeView({super.key, required this.name, required this.completed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: completed ? Colors.lightGreen : Colors.deepOrangeAccent,
          borderRadius: BorderRadius.circular(8.0)),
      child: Row(
        children: [
          Icon(
            completed ? Icons.check_box : Icons.check_box_outline_blank,
            color: Colors.white,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
