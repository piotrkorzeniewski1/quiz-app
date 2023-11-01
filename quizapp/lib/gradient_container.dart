import 'package:flutter/material.dart';
import 'package:quizapp/styled_text.dart';

class GradientContainer extends StatelessWidget{

  final Alignment alignmentStart = Alignment.topRight;
  final Alignment aligmentEnd = Alignment.bottomLeft;

  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  void onClick(){
    ///...
  }
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
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
              Image.asset('assets/images/quiz-logo.png', width: 350,),
              const SizedBox(
                height: 100,
                ),

                const StyledText('Learn Flutter the fun way!',Colors.white, 20.0),

              const SizedBox(
                height: 30,
                ),
              OutlinedButton(
                onPressed: onClick,
                child: const StyledText(
                  'Start Quiz',
                  Colors.white,
                   15.0),
                   ),
                ],
              ),
            ),
          );
  }

}

