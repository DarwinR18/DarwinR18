import 'dart:math';

import 'package:flutter/material.dart';
import 'package:reloj_flutter/ui/estilos.dart';
class ClockPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    var centerX= size.width/2;
    var centerY= size.height/2;
    var center= Offset(centerX, centerY);
    var radius=min(centerX, centerY);
    var fillBrush=Paint()
      ..color= AppStyles.primaryColor
      ..strokeCap=StrokeCap.round;

    var centerDotBrush=Paint()..color = Colors.white;
    canvas.drawCircle(center, radius -40, fillBrush);

    canvas.drawCircle(center, 16, centerDotBrush);

    

  }

  @override
  bool shouldRepaint(ClockPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(ClockPainter oldDelegate) => false;
}