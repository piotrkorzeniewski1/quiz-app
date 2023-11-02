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
        backgroundColor:const Color.fromARGB(255, 28, 0, 56),
        padding: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(answer),
      );
  }
}