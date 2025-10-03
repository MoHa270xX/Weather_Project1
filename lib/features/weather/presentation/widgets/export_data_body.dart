import 'package:flutter/material.dart';
import 'package:weather_project/features/weather/presentation/widgets/custom_app_bar.dart';
import 'package:weather_project/features/weather/presentation/widgets/cvs_export_card.dart';
import 'package:weather_project/features/weather/presentation/widgets/data_sources.dart';
import 'package:weather_project/features/weather/presentation/widgets/export_button.dart';
import 'package:weather_project/features/weather/presentation/widgets/export_options.dart';
import 'package:weather_project/features/weather/presentation/widgets/selection_title.dart';

class ExportDataScreenBody extends StatefulWidget {
  const ExportDataScreenBody({super.key});

  @override
  State<ExportDataScreenBody> createState() => _ExportDataScreenState();
}

class _ExportDataScreenState extends State<ExportDataScreenBody> {
  bool _includeMetadata = true;
  bool _exportCsv = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          CustomAppBar(title: "Export Data"),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectionTitle(title: 'Select Export Formats'),
                    const SizedBox(height: 8),
                    CsvExportCard(
                      value: _exportCsv,
                      onChanged: (val) => setState(() => _exportCsv = val!),
                    ),
                    const SizedBox(height: 24),
                    SelectionTitle(title: 'Export Options'),
                    const SizedBox(height: 8),
                    ExportOptions(
                      value: _includeMetadata,
                      onChanged: (val) =>
                          setState(() => _includeMetadata = val!),
                    ),
                    const SizedBox(height: 24),
                    SelectionTitle(title: 'Data Sources'),
                    const SizedBox(height: 8),
                    DataSource(),
                  ],
                ),
              ),
            ),
          ),
          ExportButton(isSelected: _exportCsv),
        ],
      ),
    );
  }
}
