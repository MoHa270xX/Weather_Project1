import 'package:flutter/material.dart';
import 'package:weather_project/features/weather/presentation/widgets/bullet_point.dart';
import 'package:weather_project/features/weather/presentation/widgets/setting_card.dart';

class DataQualityCard extends StatelessWidget {
  const DataQualityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsCard(
      title: 'Data Quality',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BulletPoint(text: 'All data sources are from NASA and peer-reviewed'),
          BulletPoint(text:'Historical data spans 30+ years for statistical reliability'),
         BulletPoint(text:'Probability calculations use established climatological methods'),
          BulletPoint(text:'Data is updated regularly as new observations become available'),
        ],
      ),
    );
  }
}