import 'package:flutter/material.dart';
import 'package:quizapp/styled_button.dart';
import 'package:quizapp/styled_text.dart';
import 'package:quizapp/data/questions.dart';

class QuestionsScreen extends StatefulWidget{

  const QuestionsScreen(this.onPressedAnswer,{super.key});
  final void Function(String answer) onPressedAnswer;

 @override

 State<QuestionsScreen> createState(){
  return _QuestionsScreenState();
 }

}

class _QuestionsScreenState extends State<QuestionsScreen>{

  var currentQuestionIndex = 0;
  void answerQuestion(String selectedAnswer){

    widget.onPressedAnswer(selectedAnswer);
    
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override

  Widget build(context){
    var currentQuestion = questions[currentQuestionIndex];
    return  Center(
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
                        StyledText(
                          currentQuestion.question,
                          const Color.fromARGB(255, 255, 212, 84),
                          25,
                          ),

                        const SizedBox(height: 50,),

                        ...currentQuestion.getShuffledAnswers().map((answers) {
                          return StyledButton(
                            answers,
                                (){
                                      answerQuestion(answers);
                               }
                          );
                      }),
                    ],
        ),
      ),
    );
  }
}