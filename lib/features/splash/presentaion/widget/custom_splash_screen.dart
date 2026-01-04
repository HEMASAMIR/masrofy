import 'package:flutter/material.dart';
import 'package:masrofy/core/utils/helpers.dart';
import 'package:masrofy/features/on_boarding/presentation/views/on_boarding.dart';
import 'package:masrofy/features/splash/presentaion/widget/splash_layout_builder.dart';

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
      AppHelper.navigateWithFade(context, const OnboardingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return splashLayoutBuilder();
  }
}
