import 'package:flutter/material.dart';

class FadingGradientEffect extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromPoints(
      Offset(0, (size.height / 1.3).roundToDouble()),
      Offset(size.width, size.height + 1),
    );
    LinearGradient lg = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromARGB(0, 255, 255, 255),
          Color.fromARGB(255, 255, 255, 255)
        ]);
    Paint paint = Paint()..shader = lg.createShader(rect);
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(FadingGradientEffect linePainter) => false;
}
