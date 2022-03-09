import 'package:flutter/material.dart';
import 'package:reloj_flutter/models/times_model.dart';

import 'widgets/reloj.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              ClockWidget(TimesModel(20, 32, 3)),
            ],
          ),
        ),

      )
    );
  }
}
