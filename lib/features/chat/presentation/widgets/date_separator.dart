import 'package:flutter/material.dart';

class DateSeparator extends StatelessWidget {
  final String date;

  const DateSeparator({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Center(
        child: Center(
          child: Stack(
            children: [
              // Outline
              Text(
                '10 July 2025',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 1
                    ..color = Color(0xFF72D6C6), // Outline color
                ),
              ),
              // Fill
              Text(
                '10 July 2025',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF0C201D), // Fill color
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
