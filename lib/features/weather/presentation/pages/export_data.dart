import 'package:flutter/material.dart';
import 'package:weather_project/features/weather/presentation/widgets/export_data_body.dart';

class ExportDataScreen extends StatelessWidget {
  const ExportDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFF0D1B3E),
      body: ExportDataScreenBody());
  }
}
