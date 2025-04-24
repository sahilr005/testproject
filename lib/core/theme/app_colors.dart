import 'dart:math';
import 'package:flutter/material.dart';

final Map<String, Color> _senderColors = {};
final List<Color> _colorPool = [
  Color(0xFF2A9D8F),
  Color(0xFFF4392A),
  Color(0xFF1D4B45),
  Color(0xFF90BE6D),
  Color(0xFF577590),
  Color(0xFFB5838D),
];

Color getColorForSender(String sender) {
  if (!_senderColors.containsKey(sender)) {
    final random = Random(sender.hashCode);
    _senderColors[sender] = _colorPool[random.nextInt(_colorPool.length)];
  }
  return _senderColors[sender]!;
}
