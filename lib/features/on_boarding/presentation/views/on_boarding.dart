import 'package:flutter/material.dart';
import 'package:masrofy/features/on_boarding/presentation/widget/custom_onboarding.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // final pages = [
  //   {
  //     "lottie": "assets/lottie/empty.json",
  //     "title": "تقارير مفصلة ودقيقة",
  //     "subtitle":
  //         "اعرف فلوسك رايحة فين من خلال رسوم بيانية بسيطة وسهلة القراءة",
  //   },
  //   {
  //     "lottie": "assets/lottie/Money.json",
  //     "title": "سجل مصاريفك بسهولة",
  //     "subtitle": "ضيف كل اللي بتصرفه في ثواني وخليك متابع ميزانيتك أول بأول",
  //   },
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8FBF8),
      body: CustomOnBoarding(),
    );
  }
}
