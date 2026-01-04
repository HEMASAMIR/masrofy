import 'package:flutter/material.dart';

class OnboardingButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final IconData icon;

  const OnboardingButton({
    super.key,
    required this.onPressed,
    this.text = 'التالي', // نص افتراضي
    this.backgroundColor = const Color(0xff4CAF50), // لون افتراضي
    this.textColor = Colors.black, // لون نص افتراضي
    this.icon = Icons.arrow_forward, // أيقونة افتراضية
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 56,
        width: double.infinity,
        child: ElevatedButton.icon(
          onPressed: onPressed,
          icon: Icon(icon, color: textColor),
          label: Text(
            text,
            style: TextStyle(fontSize: 18, color: textColor),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
    );
  }
}
