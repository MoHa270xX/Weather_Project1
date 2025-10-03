import 'package:flutter/material.dart';

class HowItWorksButton extends StatelessWidget {
  const HowItWorksButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) => const Dilog(),
        );
      },
      child: const Text(
        'How it works',
        style: TextStyle(
          color: Colors.white70,
          fontSize: 16,
          decoration: TextDecoration.underline,
          decorationColor: Colors.white70,
        ),
      ),
    );
  }
}

class Dilog extends StatelessWidget {
  const Dilog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color(0xFF1E2A4B),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'How WeatherProb Works',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            const SizedBox(height: 24),
            BuildDilog(
              number: '1.',
              title: 'Choose Location & Time',
              description:
                  'Select any location worldwide and specify when you\'re planning to visit.',
            ),
            const SizedBox(height: 16),
            BuildDilog(
              number: '2.',
              title: 'Set Weather Thresholds',
              description:
                  'Define what conditions matter to you - temperature, rain, wind, humidity.',
            ),
            const SizedBox(height: 16),
            BuildDilog(
              number: '3.',
              title: 'Get Probabilities',
              description:
                  'See the likelihood of your thresholds being exceeded based on NASA historical data.',
            ),
            const SizedBox(height: 16),
            BuildDilog(
              number: '4.',
              title: 'Plan Accordingly',
              description:
                  'Make informed decisions with probability-based weather insights.',
            ),
          ],
        ),
      ),
    );
  }
}

class BuildDilog extends StatelessWidget {
  const BuildDilog({super.key, required this.number, required this.title, required this.description});
  final String number;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          number,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: const TextStyle(color: Colors.white70, fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
