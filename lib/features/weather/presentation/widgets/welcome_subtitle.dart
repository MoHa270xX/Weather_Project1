import 'package:flutter/material.dart';

class WelcomeSubtittle extends StatelessWidget {
  const WelcomeSubtittle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Plan smarter with NASA weather data\n'
      'Get probability-based weather insights for any\n'
      'location and time of year',
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white70, fontSize: 16, height: 1.5),
    );
  }
}