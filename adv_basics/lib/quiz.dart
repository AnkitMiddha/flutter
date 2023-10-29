import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/result_screen.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});
 

  @override
  State<StatefulWidget> createState() {
 return _QuizAppstate();
  }

}
 
 

   class _QuizAppstate extends State<Quiz>{
     List<String> selectedAnswers = [];
     var activeScreen = 'start-screen';
    
  
   void switchScreen() {
      setState(()
      {
        activeScreen= 'questions-screen';
      }
      );
   }
   
  void restartQuiz() {
    if (activeScreen == 'result-screen') {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'start-screen';
      });
    }
  }

      void chooseAnswer (String answer) {
        selectedAnswers.add(answer);
        if (selectedAnswers.length == questions.length) {
          setState(() {
        
            activeScreen = 'result-screen';
          }
          );
        }
      }
   
      @override
      Widget build(BuildContext context) {
        Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget =  QuestionsScreen( onSelectAnswer: chooseAnswer);
      
    }
    if (activeScreen == 'result-screen')
      {
        screenWidget =  ResultScreen( chooseAnswer : selectedAnswers, onRestart: restartQuiz);
      }
   return MaterialApp(
    home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.yellow,
              Colors.blue,
            ]
            ,
            begin:Alignment.topLeft,
            end: Alignment.bottomRight,
            ),),
            child: screenWidget
             ),
             ),
  );
  }
   }

   

