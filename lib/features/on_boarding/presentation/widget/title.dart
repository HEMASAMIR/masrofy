import 'package:flutter/material.dart';

class OnboardingTitle extends StatelessWidget {
  final String text;

  const OnboardingTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints
            .maxWidth; //إحنا بنخزن قيمة أقصى عرض متاح للعنصر في متغير width

        return Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: width * 0.07, // حجم الخط كنسبة من العرض (7%)
            fontWeight: FontWeight.bold,
            color: const Color(0xff0F2D1E),
          ),
        );
      },
    );
  }
}
