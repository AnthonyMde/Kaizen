import 'package:flutter/material.dart';
import 'package:kaizen/theme/theme_extension.dart';

final lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.pinkAccent, brightness: Brightness.light),
    extensions: const [
      CustomColors(
          shimmerBase: Color(0xFFE0E0E0), shimmerHighlight: Color(0xFFF5F5F5))
    ]);

final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.pinkAccent, brightness: Brightness.dark),
    extensions: const [
      CustomColors(
          shimmerBase: Color(0xFF424242), shimmerHighlight: Color(0xFF616161))
    ]);
