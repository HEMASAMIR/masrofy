// lib/core/constants/onboarding_pages.dart
class OnboardingPage {
  final String lottie;
  final String title;
  final String subtitle;

  OnboardingPage({
    required this.lottie,
    required this.title,
    required this.subtitle,
  });
}

// قائمة الصفحات
final List<OnboardingPage> onboardingPages = [
  OnboardingPage(
    lottie: "assets/lottie/empty.json",
    title: "تقارير مفصلة ودقيقة",
    subtitle:
        "اعرف فلوسك رايحة فين من خلال رسوم بيانية بسيطة وسهلة القراءة",
  ),
  OnboardingPage(
    lottie: "assets/lottie/Money.json",
    title: "سجل مصاريفك بسهولة",
    subtitle: "ضيف كل اللي بتصرفه في ثواني وخليك متابع ميزانيتك أول بأول",
  ),
];
