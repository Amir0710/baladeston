import 'package:flutter/material.dart';

class PrintCircle extends StatelessWidget {
  final double padding;
  final double width;
  final double radius;
  final int layer;
  final int incremental;
  final Color color;
  final PaintingStyle style;
  final Offset? center; // ← مرکز اختیاری

  const PrintCircle({
    super.key,
    required this.padding,
    required this.width,
    required this.layer,
    required this.incremental,
    required this.radius,
    required this.color,
    required this.style,
    this.center,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(radius * 2, radius * 2),
      painter: _PrintCirclePainter(
        padding: padding,
        width: width,
        layer: layer,
        incremental: incremental,
        radius: radius,
        color: color,
        style: style,
        center: center,
      ),
    );
  }
}

class _PrintCirclePainter extends CustomPainter {
  final double padding;
  final double width;
  final double radius;
  final int layer;
  final int incremental;
  final Color color;
  final PaintingStyle style;
  final Offset? center;

  _PrintCirclePainter({
    required this.padding,
    required this.width,
    required this.layer,
    required this.incremental,
    required this.radius,
    required this.color,
    required this.style,
    this.center,
  });

  @override
  void paint(Canvas canvas, Size canvasSize) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = width
      ..style = style;

    // اگر مرکز مشخص نشده، به صورت پیش‌فرض وسط بوم
    final drawCenter = center ?? Offset(canvasSize.width / 2, canvasSize.height / 2);

    for (int i = 0; i < layer; i++) {
      double newRadius = radius - i * (padding + width + (i * incremental));
      if (newRadius > 0) {
        canvas.drawCircle(drawCenter, newRadius, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
