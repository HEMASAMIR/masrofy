import 'package:flutter/material.dart';

class SplashVersion extends StatelessWidget {
  const SplashVersion({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        return Text(
          'V 1.0.0',
          style: TextStyle(
            fontSize: width * 0.03, // 3% من عرض الشاشة
            color: Colors.grey,
          ),
        );
      },
    );
  }
}
