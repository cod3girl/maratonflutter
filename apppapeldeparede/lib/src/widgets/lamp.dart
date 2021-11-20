import 'package:flutter/material.dart';

class Lamp extends StatelessWidget {
  const Lamp({Key? key, required this.size, this.color}) : super(key: key);
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _CustomClipper(),
      child: Container(
        height: size * 2,
        width: size,
        color: color ?? Colors.white,
      ),
    );
  }
}

class _CustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width * 0.475, 0);
    path.lineTo(size.width * 0.475, size.height * 0.7);
    path.quadraticBezierTo(
        size.width * 0.15, size.height * 0.7, 0, size.height * 0.9);
    path.lineTo(size.width * 0.2, size.height * 0.9);
    path.quadraticBezierTo(
        size.width * 0.5, size.height, size.width * 0.8, size.height * 0.9);
    path.lineTo(size.width, size.height * 0.9);
    path.quadraticBezierTo(size.width * 0.85, size.height * 0.7,
        size.width * 0.525, size.height * 0.7);
    path.lineTo(size.width * 0.525, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}