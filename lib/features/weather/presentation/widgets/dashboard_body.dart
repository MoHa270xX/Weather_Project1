import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_project/core/utils/app_router.dart';
import 'package:weather_project/features/weather/presentation/widgets/containu_button.dart';
import 'package:weather_project/features/weather/presentation/widgets/custom_app_bar.dart';
import 'package:weather_project/features/weather/presentation/widgets/information_card.dart';
import 'package:weather_project/features/weather/presentation/widgets/probability_card.dart';

class WeatherProbabilitiesScreenBody extends StatefulWidget {
  const WeatherProbabilitiesScreenBody({super.key});

  @override
  State<WeatherProbabilitiesScreenBody> createState() =>
      _WeatherProbabilitiesScreenState();
}

class _WeatherProbabilitiesScreenState
    extends State<WeatherProbabilitiesScreenBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomAppBar(
            title: 'Weather Probabilities',
            showBackText: false,
            trailing: const Icon(Icons.download_outlined, color: Colors.white),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const InformationCard(),
                    const SizedBox(height: 16),
                    ProbabilityCard(
                      icon: Icons.thermostat,
                      iconColor: Colors.orange,
                      title: 'Temperature',
                      threshold: 'Threshold: 30°C',
                      probability: '65%',
                    ),
                    const SizedBox(height: 16),
                    ProbabilityCard(
                      icon: Icons.water_drop_outlined,
                      iconColor: Colors.lightBlueAccent,
                      title: 'Precipitation',
                      threshold: 'Threshold: 10mm',
                      probability: '23%',
                    ),
                    const SizedBox(height: 16),
                    ProbabilityCard(
                      icon: Icons.air,
                      iconColor: Colors.white,
                      title: 'Wind Speed',
                      threshold: 'Threshold: 20km/h',
                      probability: '42%',
                    ),
                    const SizedBox(height: 24),
                    ContinueButton(text: "Export Data",onPressed: () {
                      GoRouter.of(context).push(AppRouter.kExportView);
                    },),
                    const SizedBox(height: 24),
                  
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  
}
