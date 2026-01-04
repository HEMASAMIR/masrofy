import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingLottie extends StatelessWidget {
  final String path;

  const OnboardingLottie({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final lottieHeight = height * 0.35; // 35% من ارتفاع الشاشة

    return Container(
      padding: EdgeInsets.all(width * 0.06),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(width * 0.07),
        boxShadow: [
          BoxShadow(
            color: Colors.green.withOpacity(0.08),
            blurRadius: 20,
          ),
        ],
      ),
      child: SizedBox(
        height: lottieHeight,
        child: Lottie.asset(path),
      ),
    );
  }
}
