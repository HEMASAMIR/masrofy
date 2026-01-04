import 'package:flutter/material.dart';
import 'package:masrofy/core/constants/app_colors..dart';
import 'package:masrofy/features/splash/presentaion/widget/lottie_component.dart';

Widget splashLayoutBuilder() {
  return LayoutBuilder(
    builder: (context, constraints) {
      final width = constraints.maxWidth;
      final height = constraints.maxHeight;

      return Scaffold(
        backgroundColor: AppColors.background,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * 0.3, // 30% من ارتفاع الشاشة
                  child: const SplashLottie(),
                ),
                SizedBox(height: height * 0.04), // 4% من ارتفاع الشاشة
                Text(
                  'مرحبا بك في مصروفي',
                  style: TextStyle(
                    fontSize: width * 0.08, // حجم نص نسبي
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: height * 0.01), // 1% من ارتفاع الشاشة
                Text(
                  'سجل مصاريفك بسهولة وتابع ميزانيتك',
                  style: TextStyle(
                    fontSize: width * 0.045, // حجم نص نسبي
                    color: Colors.grey[700],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
