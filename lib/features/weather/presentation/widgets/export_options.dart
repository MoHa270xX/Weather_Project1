import 'package:flutter/material.dart';

class ExportOptions extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;

  const ExportOptions({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF172A4D),
        borderRadius: BorderRadius.circular(20),
      ),
      child: CheckboxListTile(
        title: const Text(
          'Include Metadata',
          style: TextStyle(color: Colors.white),
        ),
        subtitle: const Text(
          'Add data source references, units, and methodology notes',
          style: TextStyle(color: Colors.white70),
        ),
        value: value,
        onChanged: onChanged,
        activeColor: Colors.blue,
        checkColor: Colors.white,
        controlAffinity: ListTileControlAffinity.leading,
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}
