import 'dart:math' as math;

import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: 'Search city or enter coordinates...',
        hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
        filled: true,
        fillColor: const Color(0xFF0D1B3E),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 20,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
 

// Custom button widget
class CustomActionButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? icon;
  final Color textColor;
  final Color? iconColor;
  final bool isElevated;

  const CustomActionButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.textColor = Colors.white,
    this.iconColor,
    this.isElevated = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonChild = icon != null
        ? Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Transform.rotate(
                angle: icon == Icons.send_outlined ? -math.pi / 4 : 0,
                child: Icon(
                  icon,
                  color: iconColor ?? textColor,
                  size: 20,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                text,
                style: TextStyle(color: textColor, fontSize: 16),
              ),
            ],
          )
        : Text(
            text,
            style: TextStyle(color: textColor, fontSize: 16),
          );

    if (isElevated) {
      return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF0D1B3E),
            padding: const EdgeInsets.symmetric(vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: const BorderSide(color: Color(0xFF172A4D)),
            ),
          ),
          child: buttonChild,
        ),
      );
    } else {
      return TextButton(
        onPressed: onPressed,
        child: buttonChild,
      );
    }
  }
}
