import 'dart:math';

import 'package:flutter/material.dart';

class SunClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    final double radius = size.width / 4;
    final int points = 16;

    for (int i = 0; i < points; i++) {
      final double angle = (2 * pi / points) * i;
      final bool isLongRay = i % 2 == 0;
      final double rayLength = isLongRay ? radius * 2 : radius * 0.8;

      final double x = centerX + rayLength * cos(angle);
      final double y = centerY + rayLength * sin(angle);

      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
