import 'package:flutter/material.dart';
import 'package:weather_project/features/weather/presentation/widgets/setting_card.dart';
import 'package:weather_project/features/weather/presentation/widgets/step_settings.dart';


class HowItWorks extends StatelessWidget {
  const HowItWorks({super.key});

  @override
  Widget build(BuildContext context) {
    return  SettingsCard(
      title: 'How It Works',
      child: Column(
        children: [
          StepSettings(number :'1',title:  'Historical Analysis', subTitle: 'We analyze 30+ years of NASA satellite and ground-based observations.'),
          StepSettings(number :'2',title:  'Statistical Modeling',subTitle:  'Advanced climatological methods calculate probability distributions.'),
         StepSettings (number :'3', title: 'Threshold Analysis', subTitle: 'Calculate probability of exceeding your specific weather thresholds.'),
        ],
      )
    );
  }
}