import 'package:flutter/material.dart';
import 'package:first_app/dart_roller.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientColour extends StatelessWidget {
  const GradientColour({super.key, required this.color});
  final List<Color> color;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: color,
            begin: startAlignment,
            end: endAlignment,
          ),
          color: Colors.blue),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
