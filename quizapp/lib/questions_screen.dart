import 'package:flutter/material.dart';
import 'package:quizapp/styled_button.dart';
import 'package:quizapp/styled_text.dart';
import 'package:quizapp/data/questions.dart';

class QuestionsScreen extends StatefulWidget{

  const QuestionsScreen({super.key});

 @override

 State<QuestionsScreen> createState(){
  return _QuestionsScreenState();
 }

}

class _QuestionsScreenState extends State<QuestionsScreen>{

  @override

  Widget build(context){
    final currentQuestion = questions[0];
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
                StyledText(currentQuestion.question, Color.fromARGB(255, 255, 212, 84),15),
                const SizedBox(height: 50,),
                ...currentQuestion.options.map((answers) {
                  return StyledButton(answers, () {});
           }),
        ],
      ),
    );
  }
}