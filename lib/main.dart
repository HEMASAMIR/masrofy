import 'package:flutter/material.dart';
import 'package:masrofy/features/splash/presentaion/views/splash_screen.dart';

void main() {
  runApp(const MasrofyApp());
}

class MasrofyApp extends StatelessWidget {
  const MasrofyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'مصروفي',

      /// 🔹 RTL للتطبيق كله
      builder: (context, child) {
        return Directionality(textDirection: TextDirection.rtl, child: child!);
      },

      theme: ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: const Color(0xffF8FBF8),
        useMaterial3: true,
      ),

      home: const SplashScreen(),
    );
  }
}
