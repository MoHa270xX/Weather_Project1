import 'package:flutter/material.dart';


class ExportButton extends StatelessWidget {
  final bool isSelected;
  final VoidCallback? onPressed;

  const ExportButton({
    super.key,
    required this.isSelected,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton.icon(
          onPressed: isSelected ? onPressed : null,
          icon: const Icon(Icons.download, color: Colors.white),
          label: Text(
            isSelected ? 'Export CSV Data' : 'Select a Format',
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF1E3A8A),
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            disabledBackgroundColor: Colors.grey.shade800,
          ),
        ),
      ),
    );
  }
}
