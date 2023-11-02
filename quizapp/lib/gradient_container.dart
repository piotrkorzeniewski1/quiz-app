import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget{

  final Alignment alignmentStart = Alignment.topRight;
  final Alignment aligmentEnd = Alignment.bottomLeft;

  final Color color1;
  final Color color2;
  final Widget? child;

  const GradientContainer(this.color1, this.color2, this.child, {super.key});

  @override

  Widget build(context){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: alignmentStart,
          end: aligmentEnd,
        ),
      ),
      child: child,
    );
  }

}