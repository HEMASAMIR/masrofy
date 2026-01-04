import 'package:flutter/material.dart';

class OnboardingSubtitle extends StatelessWidget {
  final String text;

  const OnboardingSubtitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          color: Colors.green.shade700,
        ),
      ),
    );
  }
}
