import 'package:flutter/material.dart';
import 'package:quizapp/styled_text.dart';

class QuizResults extends StatelessWidget{

  const QuizResults(this.listOfAnswers, {super.key});
  
  final List<String> listOfAnswers;

  @override

  Widget build(context){
    return const StyledText('TREFHBDAS',Colors.white,30);
  }

}