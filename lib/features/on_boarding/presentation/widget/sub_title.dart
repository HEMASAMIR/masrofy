import 'package:flutter/material.dart';

class OnboardingSubtitle extends StatelessWidget {
  final String text;

  const OnboardingSubtitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        // final height = constraints.maxHeight;

        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.08,
          ), // 8% من العرض
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: width * 0.045, // 4.5% من العرض
              color: Colors.green.shade700,
            ),
          ),
        );
      },
    );
  }
}
