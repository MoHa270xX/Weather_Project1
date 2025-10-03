import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final Widget child;

  const SettingsCard({this.icon, this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF172A4D),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            Row(
              children: [
                if (icon != null) ...[
                  Icon(icon, color: Colors.white70),
                  const SizedBox(width: 12),
                ],
                Text(
                  title!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          if (title != null) const SizedBox(height: 16),
          child,
        ],
      ),
    );
  }
}