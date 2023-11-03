import 'package:flutter/material.dart';
import 'package:quizapp/styled_text.dart';

class StyledButton extends StatelessWidget{

  const StyledButton(this.answer,this.onClick,{super.key});
  final String answer;
  final void Function() onClick;

  @override

  Widget build(context){
    return ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        backgroundColor:const Color.fromARGB(255, 27, 1, 52),
        padding: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: StyledText(answer,Colors.white,15),
      );
  }
}