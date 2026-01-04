import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashLottie extends StatelessWidget {
  const SplashLottie({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final height = constraints.maxHeight;
        final size = (width < height ? width : height) * 0.4;

        return SizedBox(
          height: size,
          width: size,
          child: Lottie.asset(
            'assets/lottie/Collecting Money.json',
            fit: BoxFit.contain,
          ),
        );
      },
    );
  }
}
