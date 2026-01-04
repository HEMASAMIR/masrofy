import 'package:flutter/material.dart';
import 'package:masrofy/features/on_boarding/presentation/views/on_boarding.dart';
import 'package:masrofy/features/splash/presentaion/widget/lottie_component.dart';
import 'package:masrofy/features/splash/presentaion/widget/subtitle_component.dart';
import 'package:masrofy/features/splash/presentaion/widget/title_component.dart';

class CustomSplashScreen extends StatefulWidget {
  const CustomSplashScreen({super.key});

  @override
  State<CustomSplashScreen> createState() => _CustomSplashScreenState();
}

class _CustomSplashScreenState extends State<CustomSplashScreen> {
  @override
  void initState() {
    super.initState();
    splashanimation();
  }

  Future<Null> splashanimation() {
    return Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 600),
          pageBuilder: (_, __, ___) => const OnboardingScreen(),
          transitionsBuilder: (_, animation, __, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8FBF8),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SplashLottie(),
              SizedBox(height: 32),
              SplashTitle(),
              SizedBox(height: 8),
              SplashSubtitle(),
            ],
          ),
        ),
      ),
    );
  }
}
