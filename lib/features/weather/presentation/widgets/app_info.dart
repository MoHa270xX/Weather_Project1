import 'package:flutter/material.dart';
import 'package:weather_project/features/weather/presentation/widgets/setting_card.dart';

class AppInfo extends StatelessWidget {
  const AppInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsCard(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.orange.withOpacity(0.3),
            ),
            child: const Icon(Icons.info_outline, color: Colors.orange, size: 32)
          ),
          const SizedBox(height: 16),
          const Text('WeatherProb', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
          const Text('Version 1.0.0', style: TextStyle(color: Colors.white70)),
          const SizedBox(height: 16),
          const Text(
            'Plan smarter with NASA weather data. Get probability-based insights for any location and time.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white70, height: 1.5),
          ),
        ],
      )
    );
  }
}