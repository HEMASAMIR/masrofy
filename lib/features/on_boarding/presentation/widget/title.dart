import 'package:flutter/material.dart';

class OnboardingTitle extends StatelessWidget {
  final String text;

  const OnboardingTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: Color(0xff0F2D1E),
      ),
    );
  }
}
