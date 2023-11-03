import 'package:flutter/material.dart';
import 'package:quizapp/styled_text.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/questions_summary.dart';

class QuizResults extends StatelessWidget{

  const QuizResults(this.listOfAnswers, this.restartQuiz, {super.key});
  
  final void Function() restartQuiz;

  final List<String> listOfAnswers;

  List<Map<String, Object>> getSummaryData(){

    final List<Map<String, Object>> summary = [];

    for(int i = 0 ; i < listOfAnswers.length ; i++){

      summary.add({
        'question_index': i+1,
        'question': questions[i].question,
        'correct_answer': questions[i].options[0],
        'user_answer': listOfAnswers[i],

      });

    }

    return summary;
  }

  @override


  Widget build(context){
    final summaryOfData = getSummaryData();
    final numOfAllQuestions = questions.length;
    final numOfCorrectAnswers = summaryOfData.where((data){
      return data['correct_answer']==data['user_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              StyledText('You answered $numOfCorrectAnswers of $numOfAllQuestions questions correctly', Colors.white, 30),
              const SizedBox(height: 30,),
              QuestionsSummary(summaryOfData),
              const SizedBox(height: 30,),

              OutlinedButton.icon(
                onPressed: restartQuiz,
                style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
                icon: const Icon(Icons.restart_alt),
                label: const StyledText(
                  'Restart Quiz',
                  Color.fromARGB(255, 255, 255, 255),
                   25),
                   ),
          ],
        ),
        ),
    );
  }
}