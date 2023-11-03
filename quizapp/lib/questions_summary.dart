import 'package:flutter/material.dart';
import 'package:quizapp/styled_text.dart';

class QuestionsSummary extends StatelessWidget{

  const QuestionsSummary(this.summaryData,{super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map(
        (data) {
          return Row(children: [
            Text((data['question_index']).toString()),
            Expanded(
              child: Column(
                children: [
                  StyledText(data['question'].toString(), Colors.white,20,),
                  const SizedBox(height: 10,),
                  StyledText(data['correct_answer'].toString(), Colors.green, 15,),
                  if(data['correct_answer'].toString()==data['user_answer'].toString())
                  StyledText(data['user_answer'].toString(), Colors.green, 15,)
                  else
                  StyledText(data['user_answer'].toString(), Colors.red, 15,)
                ],
              ),
            ),
          ],);
        
      }).toList(),
    );
  }
}
