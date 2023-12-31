import 'package:flutter/material.dart';
import 'package:quizapp/gradient_container.dart';
import 'package:quizapp/quiz_results.dart';
import 'package:quizapp/start_screen.dart';
import 'package:quizapp/questions_screen.dart';
import 'package:quizapp/data/questions.dart';

class Quiz extends StatefulWidget{

  const Quiz({super.key});

 @override

 State<Quiz> createState(){
  return _QuizState();
 }

}

class _QuizState extends State<Quiz>{

  String? activeScreen;
  List<String> selectedAnswer = [];

  void switchScreen(){
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void choosedAnswer(String answer)
  {
    selectedAnswer.add(answer);

    if(selectedAnswer.length == questions.length)
    {
      setState(() {
        activeScreen = 'quiz-results';
      });
    }
  }

  void restartQuiz()
  {
    setState(() {
      activeScreen = 'start-screen';
      selectedAnswer=[];
    });
  }

  @override

  Widget build(context){

     Widget screenWidget = StartScreen(switchScreen);

     if(activeScreen == 'questions-screen'){
          screenWidget = QuestionsScreen(choosedAnswer);
     }
     else if(activeScreen == 'quiz-results')
     {
          screenWidget = QuizResults(selectedAnswer,restartQuiz);
     }
     else{
          screenWidget = StartScreen(switchScreen);

     }

    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          const Color.fromARGB(255, 105, 58, 185),
          const Color.fromARGB(255, 85, 0, 150),
          screenWidget,
            
        ),
      ),
    );
  }
}