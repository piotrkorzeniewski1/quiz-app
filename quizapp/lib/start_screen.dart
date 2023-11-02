import 'package:flutter/material.dart';
import 'package:quizapp/styled_text.dart';

class StartScreen extends StatelessWidget{

  const StartScreen({super.key});

  void onClick(){
    ///...
  }

  @override

  Widget build(context){
    return  Center(
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
              OutlinedButton.icon(
                onPressed: onClick,
                style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
                icon: const Icon(Icons.add_circle_outlined),
                label: const StyledText(
                  'Start Quiz',
                  Color.fromARGB(255, 255, 255, 255),
                   15.0),
                   ),
                ],
              ),
            );
  }

}

