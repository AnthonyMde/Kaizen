import 'package:flutter/material.dart';

extension CustomColors on ColorScheme {
  // Cards
  Color get todo => brightness == Brightness.light ? Colors.orange : Colors.deepOrange;
  Color get done => brightness == Brightness.light ? Colors.green : Colors.lightGreen;

  // Skeleton shimmer
  Color get shimmerBase => brightness == Brightness.light ? const Color(0xFFE0E0E0) : Color(0xFF424242);
  Color get shimmerHighlight => brightness == Brightness.light ? const Color(0xFFF5F5F5) : Color(0xFF616161);
}