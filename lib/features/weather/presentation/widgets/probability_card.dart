import 'package:flutter/material.dart';

class ProbabilityCard extends StatelessWidget {
  const ProbabilityCard({super.key, required this.icon, required this.iconColor, required this.title, required this.threshold, required this.probability});
 final IconData icon;
    final Color iconColor;
    final String title;
    final String threshold;
    final String probability;
  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF172A4D),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: iconColor, size: 28),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    threshold,
                    style: const TextStyle(color: Colors.white54, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Text(
                probability,
                style: TextStyle(
                  color: iconColor,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'probability',
                style: TextStyle(color: Colors.white54, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }

  }
