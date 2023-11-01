import 'package:flutter/material.dart';
import 'package:quizapp/gradient_container.dart';


void main(){

  runApp(

    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Color.fromARGB(255, 84, 6, 96),Color.fromARGB(255, 107, 0, 119)),
      ),
    ),

  );

}