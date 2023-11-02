import 'package:flutter/material.dart';
import 'package:quizapp/gradient_container.dart';
import 'package:quizapp/start_screen.dart';
import 'package:quizapp/questions_screen.dart';

class Quiz extends StatefulWidget{

  const Quiz({super.key});

 @override

 State<Quiz> createState(){
  return _QuizState();
 }

}

class _QuizState extends State<Quiz>{

  var activeScreen = 'start-screen';

  void switchScreen(){
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override

  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Colors.deepPurple,
          const Color.fromARGB(255, 85, 0, 150),
          activeScreen == 'start-screen'
            ? StartScreen(switchScreen)
            : const QuestionsScreen(),
            
        ),
      ),
    );
  }
}