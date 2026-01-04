import 'package:flutter/material.dart';
import 'package:masrofy/features/on_boarding/presentation/widget/buton.dart';
import 'package:masrofy/features/on_boarding/presentation/widget/indicator.dart';
import 'package:masrofy/features/on_boarding/presentation/widget/on_boarding_app_bar.dart';
import 'package:masrofy/features/on_boarding/presentation/widget/on_boarding_lottie.dart';
import 'package:masrofy/features/on_boarding/presentation/widget/sub_title.dart';
import 'package:masrofy/features/on_boarding/presentation/widget/title.dart';
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  final pages = [
    {
      "lottie": "assets/lottie/empty.json",
      "title": "تقارير مفصلة ودقيقة",
      "subtitle":
          "اعرف فلوسك رايحة فين من خلال رسوم بيانية بسيطة وسهلة القراءة",
    },
    {
      "lottie": "assets/lottie/Money.json",
      "title": "سجل مصاريفك بسهولة",
      "subtitle": "ضيف كل اللي بتصرفه في ثواني وخليك متابع ميزانيتك أول بأول",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8FBF8),
      body: SafeArea(
        child: Column(
          children: [
            const OnboardingAppBar(),

            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: pages.length,
                onPageChanged: (index) {
                  setState(() => currentIndex = index);
                },
                itemBuilder: (context, index) {
                  final page = pages[index];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OnboardingLottie(path: page["lottie"]!),
                      const SizedBox(height: 40),
                      OnboardingTitle(text: page["title"]!),
                      const SizedBox(height: 16),
                      OnboardingSubtitle(text: page["subtitle"]!),
                    ],
                  );
                },
              ),
            ),

            OnboardingIndicator(
              count: pages.length,
              currentIndex: currentIndex,
            ),

            const SizedBox(height: 24),

            OnboardingButton(
              onPressed: () {
                if (currentIndex < pages.length - 1) {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                } else {
                  // TODO: Navigate to Home
                }
              },
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
