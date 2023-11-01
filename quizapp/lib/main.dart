import 'package:flutter/material.dart';
import 'package:quizapp/gradient_container.dart';


void main(){

  runApp(

    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Color.fromARGB(255, 89, 3, 103),Color.fromARGB(255, 107, 0, 119)),
      ),
    ),

  );

}