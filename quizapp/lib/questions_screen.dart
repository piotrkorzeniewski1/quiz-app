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

  var currentQuestionIndex = 0;
  void answerQuestion(){
    setState(() {
      if(currentQuestionIndex==(questions.length-1))
      {
      }
      currentQuestionIndex++;
    });
  }

  @override

  Widget build(context){
    var currentQuestion = questions[currentQuestionIndex];
    return  Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
                        StyledText(
                          currentQuestion.question,
                          const Color.fromARGB(255, 255, 212, 84),
                          15
                          ),

                        const SizedBox(height: 50,),

                        ...currentQuestion.getShuffledAnswers().map((answers) {
                          return StyledButton(answers, answerQuestion);
                      }),
                    ],
        ),
      ),
    );
  }
}