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
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Cairo',
      ),
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: ResponsiveWrapper(child: SplashScreen()),
      ),
    );
  }
}

/// Wrapper لتوفير LayoutBuilder لكل الشاشة
class ResponsiveWrapper extends StatelessWidget {
  final Widget child;

  const ResponsiveWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final screenHeight = constraints.maxHeight;

        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            size: Size(screenWidth, screenHeight),
          ),
          child: child,
        );
      },
    );
  }
}
