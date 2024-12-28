import 'package:flutter/material.dart';

class MoonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    final double outerRadius = size.width / 2;
    final double innerRadius = size.width / 2.5;

    path.addOval(
        Rect.fromCircle(center: Offset(centerX, centerY), radius: outerRadius));

    path.addOval(Rect.fromCircle(
        center: Offset(centerX + outerRadius / 5, centerY),
        radius: innerRadius));

    path.fillType = PathFillType.evenOdd;
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
