import 'package:flutter/material.dart';
import 'package:weather_project/features/weather/presentation/widgets/action_buttons.dart';
import 'package:weather_project/features/weather/presentation/widgets/current_location_button.dart';
import 'package:weather_project/features/weather/presentation/widgets/custom_text_feild.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF172A4D),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.location_on_outlined, color: Colors.white70),
              SizedBox(width: 8),
              Text(
                'Choose Location',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const CustomTextFeild(),
          const SizedBox(height: 16),
          const ActionBottuns(),
          const SizedBox(height: 8),
          const Text(
            'Popular: New York, London, Tokyo, Sydney',
            style: TextStyle(color: Colors.white54, fontSize: 12),
          ),
          const SizedBox(height: 16),
         const CurrentLocationButton(),
        ],
      ),
    );
  }
}