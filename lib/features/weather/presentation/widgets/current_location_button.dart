import 'dart:math' as math;

import 'package:flutter/material.dart';

class CurrentLocationButton extends StatelessWidget {
  const CurrentLocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Transform.rotate(
          angle: -math.pi / 4,
          child: const Icon(
            Icons.send_outlined,
            color: Colors.pinkAccent,
            size: 20,
          ),
        ),
        label: const Text(
          'Use Current Location',
          style: TextStyle(color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF0D1B3E),
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: const BorderSide(color: Color(0xFF172A4D)),
          ),
        ),
      ),
    );
  }
}