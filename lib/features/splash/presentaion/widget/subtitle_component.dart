import 'package:flutter/material.dart';

class SplashSubtitle extends StatelessWidget {
  const SplashSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        return Text(
          'رفيقك المالي الذكي',
          style: TextStyle(
            fontSize: width * 0.045, // 4.5% من عرض الشاشة
            color: Colors.black54,
          ),
          textAlign: TextAlign.center,
        );
      },
    );
  }
}
