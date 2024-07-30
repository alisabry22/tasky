import 'package:flutter/material.dart';

class ChatBubbleTriangle extends CustomPainter {
  final Color color;
  ChatBubbleTriangle({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color =  color;

    var path = Path();
    path.lineTo(-10, 0);
    path.lineTo(0, 10);
    path.lineTo(10, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}