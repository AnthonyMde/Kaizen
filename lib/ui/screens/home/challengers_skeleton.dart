import 'package:flutter/material.dart';
import 'package:kaizen/theme/colors_extension.dart';
import 'package:shimmer/shimmer.dart';

class ChallengersSkeleton extends StatelessWidget {
  const ChallengersSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final shimmerBaseColor = Theme.of(context).colorScheme.shimmerBase;
    final shimmerHighlightColor = Theme.of(context).colorScheme.shimmerHighlight;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Challenger name placeholder
        SizedBox(
            width: 100,
            child: Shimmer.fromColors(
                baseColor: shimmerBaseColor,
                highlightColor: shimmerHighlightColor,
                child: Shimmer.fromColors(
                  baseColor: shimmerBaseColor,
                  highlightColor: shimmerHighlightColor,
                  child: Container(
                    height: 20,
                    color: shimmerBaseColor,
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
                        baseColor: shimmerBaseColor,
                        highlightColor: shimmerHighlightColor,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: shimmerBaseColor,
                            shape: BoxShape.circle,
                          ),
                        )),
                    const SizedBox(width: 10),
                    // Placeholder for challenge text
                    Expanded(
                      child: Shimmer.fromColors(
                        baseColor: shimmerBaseColor,
                        highlightColor: shimmerHighlightColor,
                        child: Container(
                          height: 20,
                          color: shimmerBaseColor,
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