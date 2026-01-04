import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashLottie extends StatelessWidget {
  const SplashLottie({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: 220,
      child: Lottie.asset(
        'assets/lottie/Collecting Money.json',
        fit: BoxFit.contain,
      ),
    );
  }
}
