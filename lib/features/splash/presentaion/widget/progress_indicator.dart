import 'package:flutter/material.dart';

class SplashProgress extends StatelessWidget {
  const SplashProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: LinearProgressIndicator(
          minHeight: 6,
          valueColor: AlwaysStoppedAnimation(
            Colors.green.shade500,
          ),
          backgroundColor: Colors.green.shade100,
        ),
      ),
    );
  }
}
