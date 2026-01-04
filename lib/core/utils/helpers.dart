// lib/core/helpers/app_helper.dart
import 'package:flutter/material.dart';

class AppHelper {
  AppHelper._(); // منع إنشاء instance

  /// دالة للتنقل لشاشة جديدة
  static void navigateTo(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  /// دالة للتنقل مع استبدال الشاشة الحالية
  static void navigateToReplacement(BuildContext context, Widget page) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  /// دالة للتنقل مع تأثير Fade
  static void navigateWithFade(BuildContext context, Widget page, {int duration = 600}) {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        transitionDuration: Duration(milliseconds: duration),
        pageBuilder: (_, __, ___) => page,
        transitionsBuilder: (_, animation, __, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  /// دالة لعرض Snackbar
  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
