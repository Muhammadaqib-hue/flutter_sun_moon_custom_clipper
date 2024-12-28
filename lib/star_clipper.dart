import 'package:flutter/material.dart';

class StarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Star points
    final double w = size.width;
    final double h = size.height;

    path.moveTo(w / 2, 0);
    path.lineTo(w * 0.65, h * 0.35);
    path.lineTo(w, h / 2);
    path.lineTo(w * 0.65, h * 0.65);
    path.lineTo(w / 2, h);
    path.lineTo(w * 0.35, h * 0.65);
    path.lineTo(0, h / 2);
    path.lineTo(w * 0.35, h * 0.35);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
