import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingLottie extends StatelessWidget {
  final String path;

  const OnboardingLottie({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Colors.green.withOpacity(0.08),
            blurRadius: 20,
          ),
        ],
      ),
      child: SizedBox(
        height: 240,
        child: Lottie.asset(path),
      ),
    );
  }
}
