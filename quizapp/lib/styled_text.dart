import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget{

  const StyledText(this.text, this.color, this.size, {super.key});

  final String text;
  final Color color;
  final double size;

  @override

  Widget build(context){

    return Text(
         text,
         style: GoogleFonts.nunitoSans(
            fontSize: size,
            fontWeight: FontWeight.bold,
            color: color,
      ),
      textAlign: TextAlign.center,
    );
  }
}