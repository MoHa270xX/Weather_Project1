import 'package:flutter/material.dart';
import 'package:weather_project/features/weather/presentation/widgets/setting_card.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsCard(
      title: 'Contact & Support',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'For questions about weather data or methodology:',
            style: TextStyle(color: Colors.white70),
          ),
          const SizedBox(height: 8),
          Text(
            'support@weatherprob.com',
            style: TextStyle(color: Colors.orange.shade300, decoration: TextDecoration.underline, decorationColor: Colors.orange.shade300),
          )
        ],
      ),
    );
  }
}