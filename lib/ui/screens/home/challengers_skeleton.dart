import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../theme/theme_extension.dart';

class ChallengersSkeleton extends StatelessWidget {
  const ChallengersSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<CustomColors>()!;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Challenger name placeholder
        SizedBox(
            width: 100,
            child: Shimmer.fromColors(
                baseColor: colors.shimmerBase,
                highlightColor: colors.shimmerHighlight,
                child: Shimmer.fromColors(
                  baseColor: colors.shimmerBase,
                  highlightColor: colors.shimmerHighlight,
                  child: Container(
                    height: 20,
                    color: colors.shimmerBase,
                  ),
                ))),

        // Vertical divider
        const SizedBox(
          height: 40.0,
          child: VerticalDivider(thickness: 1, color: Colors.grey),
        ),

        // List of skeleton challenge placeholders
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => const SizedBox(height: 8),
              itemCount: 5, // Simulated skeletons
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    // Circle for checkbox or icon placeholder
                    Shimmer.fromColors(
                        baseColor: colors.shimmerBase,
                        highlightColor: colors.shimmerHighlight,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: colors.shimmerBase,
                            shape: BoxShape.circle,
                          ),
                        )),
                    const SizedBox(width: 10),
                    // Placeholder for challenge text
                    Expanded(
                      child: Shimmer.fromColors(
                        baseColor: colors.shimmerBase,
                        highlightColor: colors.shimmerHighlight,
                        child: Container(
                          height: 20,
                          color: colors.shimmerBase,
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }

}