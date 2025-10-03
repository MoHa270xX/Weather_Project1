import 'package:flutter/material.dart';
import 'package:weather_project/features/weather/presentation/widgets/data_info_card.dart';
import 'package:weather_project/features/weather/presentation/widgets/data_quality_card.dart';

class DataSourceTabs extends StatelessWidget {
  const DataSourceTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
     DataSourceInfoCard(
          title: 'NASA POWER',
          subTitle: 'Solar radiation and meteorological data',
          coverage: 'Coverage: Global, 1981-present',
        ),
        const SizedBox(height: 16),
        DataSourceInfoCard(
          title: 'Giovanni',
          subTitle: 'Satellite-based earth science data',
          coverage: 'Coverage: Global, satellite era',
        ),
        const SizedBox(height: 16),
        DataSourceInfoCard(
          title: 'MERRA-2',
          subTitle: 'Modern-Era Retrospective analysis',
          coverage: 'Coverage: Global, 1980-present',
        ),
        const SizedBox(height: 16),
        DataQualityCard(),
      ],
    );
  }
}