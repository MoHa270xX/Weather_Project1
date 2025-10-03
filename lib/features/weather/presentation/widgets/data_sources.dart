import 'package:flutter/material.dart';

class DataSource extends StatelessWidget {
  const DataSource({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF172A4D),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Data Sources', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          _DataSourceRow(source: 'NASA POWER', type: 'Meteorological data'),
          _DataSourceRow(source: 'Giovanni', type: 'Satellite observations'),
          _DataSourceRow(source: 'MERRA-2', type: 'Reanalysis data'),
        ],
      ),
    );
  }
}
class _DataSourceRow extends StatelessWidget {
  final String source;
  final String type;

  const _DataSourceRow({required this.source, required this.type});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(source, style: const TextStyle(color: Colors.white, fontSize: 16)),
          Text(type, style: TextStyle(color: Colors.orange.shade300, fontSize: 16)),
        ],
      ),
    );
  }
}