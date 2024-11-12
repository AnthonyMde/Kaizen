import 'package:flutter/material.dart';

class ChallengeView extends StatelessWidget {
  final String name;
  final bool completed;
  final void Function(String) onToggle;

  const ChallengeView(
      {super.key,
      required this.name,
      required this.completed,
      required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: completed ? Colors.lightGreen : Colors.deepOrangeAccent,
          borderRadius: BorderRadius.circular(8.0)),
      child: Row(
        children: [
          Checkbox(
            value: completed,
            onChanged: (checked) {
              onToggle(name);
            },
            activeColor: Colors.white,
            checkColor: Colors.green,
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
