import 'dart:math';

import 'package:flutter/material.dart';
import 'package:reloj_flutter/models/times_model.dart';
import 'package:reloj_flutter/styles/estilos.dart';

class ClockPainter extends CustomPainter {

  TimesModel? times;
  ClockPainter(this.times);

  @override
  void paint(Canvas canvas, Size size) {
    //calculo el radio de la posicion de las manecillas del reloj
    double secRad=((pi/2)-(pi/30) * this.times!.sec!) % (2*pi);
    double minRad=((pi/2)-(pi/30) * this.times!.min!) % (2*pi);
    double horaRad=((pi/2)-(pi/30) * this.times!.hora!) % (2*pi);

    
    var centerX= size.width/2;
    var centerY= size.height/2;
    var center= Offset(centerX, centerY);
    var radius=min(centerX, centerY);
//calculo del tamaño de las manecillas del reloj
    var secHeight=radius/2;
    var minHeight=radius/2;
    var hourHeight=radius/2-25;
//calculo de la posicion de las manecillas del reloj
    var seconds= Offset(centerX + secHeight *cos(secRad), centerY - secHeight *sin(secRad));
    var minutes= Offset(centerX + minHeight *cos(minRad), centerY - minHeight *sin(minRad));
    var horero= Offset(centerX + hourHeight *cos(horaRad), centerY - hourHeight *sin(horaRad));

    //brush for paint circle with coordenadas
    var fillBrush=Paint()
      ..color= AppStyles.primaryColor
      ..strokeCap=StrokeCap.round;
    //brush for paint circle in middle dot white
    var centerDotBrush=Paint()..color = Colors.white;
    //painting circle
    canvas.drawCircle(center, radius -40, fillBrush);
    //painting circle in middle dot white
    canvas.drawCircle(center, 16, centerDotBrush);
    // lleno datos para dibujar la manecilla del reloj
    var secBrush=Paint()
     ..color=Colors.red
     ..style=PaintingStyle.stroke
     ..strokeCap=StrokeCap.round
     ..strokeWidth=2
     ..strokeJoin=StrokeJoin.round;

     var minBrush=Paint()
     ..color=Colors.white
     ..style=PaintingStyle.stroke
     ..strokeCap=StrokeCap.round
     ..strokeWidth=3
     ..strokeJoin=StrokeJoin.round;

     var hourBrush=Paint()
     ..color=Colors.white
     ..style=PaintingStyle.stroke
     ..strokeCap=StrokeCap.round
     ..strokeWidth=4
     ..strokeJoin=StrokeJoin.round;
    
    canvas.drawLine(center, seconds, secBrush);
    canvas.drawLine(center, minutes, minBrush);
    canvas.drawLine(center, horero, hourBrush);

  }

  @override
  bool shouldRepaint(ClockPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(ClockPainter oldDelegate) => false;
}