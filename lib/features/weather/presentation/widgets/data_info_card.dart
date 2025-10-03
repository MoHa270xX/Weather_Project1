import 'package:flutter/material.dart';
import 'package:weather_project/features/weather/presentation/widgets/setting_card.dart';

class DataSourceInfoCard extends StatelessWidget {
  const DataSourceInfoCard({super.key, required this.title, required this.subTitle, required this.coverage});
  final String title;
  final String subTitle;
  final String coverage;
  @override
  Widget build(BuildContext context) {
    return SettingsCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.storage, color: Colors.white70),
                  const SizedBox(width: 8),
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Icon(Icons.open_in_new, color: Colors.white70),
            ],
          ),
          const SizedBox(height: 8),
          Text(subTitle, style: const TextStyle(color: Colors.white70)),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFF0D1B3E),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(coverage, style: const TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
