import 'package:flutter/material.dart';
import 'package:reloj_flutter/models/times_model.dart';

import 'clock_painter.dart';

class ClockWidget extends StatefulWidget {
  ClockWidget(this.time, {Key? key}) : super(key: key);
  TimesModel time;

  @override
  State<ClockWidget> createState() => _ClockWidgetState();
}

class _ClockWidgetState extends State<ClockWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //Edit circle add blur and spaces
      decoration: const BoxDecoration(shape: BoxShape.circle,
        boxShadow:[
          // ignore: unnecessary_const
          const BoxShadow(
            blurRadius: 38.0, 
            color:Color(0xff2253ff),
            blurStyle: BlurStyle.inner
            ),
        ],
      ),
      height:300.0,
      width: 300.0,
      child: CustomPaint(
        //called circle painted
        painter: ClockPainter(),
      ),
      
    );
  }
}