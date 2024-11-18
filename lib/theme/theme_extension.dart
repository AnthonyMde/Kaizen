import 'package:flutter/material.dart';

class CustomColors extends ThemeExtension<CustomColors> {
  final Color shimmerBase;
  final Color shimmerHighlight;

  const CustomColors({
    required this.shimmerBase,
    required this.shimmerHighlight,
  });

  @override
  CustomColors copyWith({
    Color? shimmerBase,
    Color? shimmerHighlight,
    Color? onMyTrollButton,
  }) {
    return CustomColors(
      shimmerBase: shimmerBase ?? this.shimmerBase,
      shimmerHighlight: shimmerHighlight ?? this.shimmerHighlight,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) return this;
    return CustomColors(
      shimmerBase: Color.lerp(shimmerBase, other.shimmerBase, t)!,
      shimmerHighlight: Color.lerp(shimmerHighlight, other.shimmerHighlight, t)!,
    );
  }
}
