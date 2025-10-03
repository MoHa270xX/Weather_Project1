
import 'package:flutter/material.dart';
import 'package:weather_project/features/weather/presentation/widgets/welcome_screen_body.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1B3E),
      body: WelcomeScreenBody(),
    );
  }
}

