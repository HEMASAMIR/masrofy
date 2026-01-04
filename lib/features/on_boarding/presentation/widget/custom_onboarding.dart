import 'package:flutter/material.dart';
import 'package:masrofy/core/constants/on_boarding_page.dart';
import 'package:masrofy/features/on_boarding/presentation/widget/buton.dart';
import 'package:masrofy/features/on_boarding/presentation/widget/indicator.dart';
import 'package:masrofy/features/on_boarding/presentation/widget/on_boarding_app_bar.dart';
import 'package:masrofy/features/on_boarding/presentation/widget/on_boarding_lottie.dart';
import 'package:masrofy/features/on_boarding/presentation/widget/sub_title.dart';
import 'package:masrofy/features/on_boarding/presentation/widget/title.dart';

class CustomOnBoarding extends StatefulWidget {
  const CustomOnBoarding({super.key});

  @override
  State<CustomOnBoarding> createState() => _CustomOnBoardingState();
}

class _CustomOnBoardingState extends State<CustomOnBoarding> {
  final PageController _controller = PageController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const OnboardingAppBar(),

          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: onboardingPages.length,
              onPageChanged: (index) {
                setState(() => currentIndex = index);
              },
              itemBuilder: (context, index) {
                final page = onboardingPages[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OnboardingLottie(path: page.lottie),
                    const SizedBox(height: 40),
                    OnboardingTitle(text: page.title),
                    const SizedBox(height: 16),
                    OnboardingSubtitle(text: page.subtitle),
                  ],
                );
              },
            ),
          ),

          OnboardingIndicator(
            count: onboardingPages.length,
            currentIndex: currentIndex,
          ),

          const SizedBox(height: 24),

          OnboardingButton(
            onPressed: () {
              if (currentIndex < onboardingPages.length - 1) {
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
    );
  }
}
