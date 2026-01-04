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
      title: 'مصروفي', // الاسم بالعربي
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Cairo', // لو عايز خط عربي
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 16),
          bodyLarge: TextStyle(fontSize: 18),
        ),
      ),
      home: const Directionality(
        // نخلي التطبيق كله RTL
        textDirection: TextDirection.rtl,
        child: Scaffold(body: SplashScreen()),
      ),
    );
  }
}
