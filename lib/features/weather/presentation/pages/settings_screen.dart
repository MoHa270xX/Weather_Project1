import 'package:flutter/material.dart';
import 'package:weather_project/features/weather/presentation/widgets/settings_screen_body.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1B3E),
      body: SettingsScreenBody(),
    );
  }
}