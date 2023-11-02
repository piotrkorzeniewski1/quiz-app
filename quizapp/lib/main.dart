import 'package:flutter/material.dart';
import 'package:quizapp/gradient_container.dart';
import 'package:quizapp/start_screen.dart';


void main(){

  runApp(

    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Colors.deepPurple,
          Color.fromARGB(255, 94, 39, 187),
           StartScreen(),
        ),
      ),
    ),
  );

}