import 'package:flutter/material.dart';

class SplashProgress extends StatelessWidget {
  const SplashProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final height = constraints.maxHeight;

        return SizedBox(
          width: width * 0.35, // 35% من عرض الشاشة
          child: ClipRRect(
            borderRadius: BorderRadius.circular(width * 0.05), // 5% من العرض
            child: LinearProgressIndicator(
              minHeight: height * 0.008, // 0.8% من ارتفاع الشاشة
              valueColor: AlwaysStoppedAnimation(Colors.green.shade500),
              backgroundColor: Colors.green.shade100,
            ),
          ),
        );
      },
    );
  }
}
