import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget{

  const StyledButton(this.answer,this.onClick,{super.key});
  final String answer;
  final void Function() onClick;

  @override

  Widget build(context){
    return ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        backgroundColor:Color.fromARGB(255, 27, 1, 52),
        padding: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(answer,textAlign: TextAlign.center,),
      );
  }
}