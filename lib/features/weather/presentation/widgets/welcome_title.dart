import 'package:flutter/material.dart';

class WelcomeTittle extends StatelessWidget {
  const WelcomeTittle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'WeatherProb',
      style: TextStyle(
        color: Colors.white,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}