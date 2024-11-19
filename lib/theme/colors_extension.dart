import 'package:flutter/material.dart';

extension CustomColors on ColorScheme {
  // Outstanding
  Color get primaryHighlight => brightness == Brightness.light ? const Color(0xFFff8947) : const Color(0xFFff8947);

  // Cards
  Color get todo => brightness == Brightness.light ? const Color(0xFFFFAA65) : const Color(0xFFAA6933);
  Color get done => brightness == Brightness.light ? const Color(0xFF9FCC68) : const Color(0xFF5A8F4D);
  Color get onChallengeCard => brightness == Brightness.light ? Colors.black : Colors.white;
  // Skeleton shimmer
  Color get shimmerBase => brightness == Brightness.light ? const Color(0xFFE0E0E0) : const Color(0xFF424242);
  Color get shimmerHighlight => brightness == Brightness.light ? const Color(0xFFF5F5F5) : const Color(0xFF616161);
}