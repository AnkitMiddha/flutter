import 'package:flutter/material.dart';
import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';
 import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget
{
  const QuestionsScreen({super.key, required this.onSelectAnswer});
  final void Function (String answer ) onSelectAnswer;
  @override
  State<StatefulWidget> createState() {
  return _QuestionScreenState();
  }

}
class _QuestionScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswers ){
    widget.onSelectAnswer(selectedAnswers);
    setState(() {
       currentQuestionIndex++;
    });
 
  }
  @override
  Widget build( context) { 
     var currentQuestion = questions[currentQuestionIndex];
  return SizedBox (
    width: double.infinity,
    child: Container(
   margin:  const EdgeInsets.all(40),
    child: Column(
      
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [

   Text(currentQuestion.text, 
   style: GoogleFonts.acme(fontSize: 22, color: Colors.white,
   fontWeight: FontWeight.bold) ,
   textAlign: TextAlign.center,
   ),
   const   SizedBox(height: 30),

   ...currentQuestion.shuffledAnswers.map((answer)
   // ... is a spread operator which converts list of widgets to individual widgets seperated by ,
    {
    return AnswerButton (answerText: answer, onTap: ()  {answerQuestion (answer) ;
   // map transform each elements of list of answers to a widget answerbutton so to create dynamically the number of buttons according to number of answers

    },
    );
   }),
 ], ),
    ),
  );
  }

}