import 'package:flutter/material.dart';

class SplashVersion extends StatelessWidget {
  const SplashVersion({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'V 1.0.0',
      style: TextStyle(
        fontSize: 12,
        color: Colors.grey,
      ),
    );
  }
}
