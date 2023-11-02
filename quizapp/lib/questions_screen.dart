import 'package:flutter/material.dart';
import 'package:quizapp/styled_text.dart';

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
    return const StyledText('TEXT',Color.fromARGB(255, 255, 0, 0), 30);
  }
}