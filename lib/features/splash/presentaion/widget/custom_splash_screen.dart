import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomSplashScreen extends StatelessWidget {
  const CustomSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl, // عشان كله عربي
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white, // لون خلفية الشاشة
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // هنا تضيف ملف Lottie
              Lottie.asset(
                'assets/lottie/your_animation.json', // استبدل بالمسار بتاعك
                width: 200,
                height: 200,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 20),
              const Text(
                'أهلاً بك في مصروفي', // نص عربي
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontFamily: 'Cairo', // لو عايز خط عربي
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'نظم مصروفاتك بسهولة وبالعربي',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                  fontFamily: 'Cairo',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
