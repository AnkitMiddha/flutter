
import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/questions_summary.dart';

class ResultScreen extends StatelessWidget {
   const ResultScreen ({super.key, required this.chooseAnswer,  required this.onRestart});
final List<String> chooseAnswer;
 final void Function() onRestart;
 List<Map<String,Object>> getSummarydata() {
  List<Map<String,Object>> summary = [];
  for ( int i=0;i < chooseAnswer.length; i++ )

{ summary.add(
  {
  'question_index' : i,
  'questions' : questions[i].text,
  'correct_answer' : questions[i].answers[0],
  'user_answer' : chooseAnswer[i],
  }
);
}  return summary;
 }
 @override
  Widget build(BuildContext context) {
    final summaryData = getSummarydata();
    final numtotalQuestion = questions.length;
    final  numCorrectQuestions = summaryData.where((data) {
      return  data['user_answer'] == data['correct_answer'];
      }).length;
    return SizedBox (
    width: double.infinity,
    child: Container(
   margin:  const EdgeInsets.all(40),
   child:  Column(
     mainAxisAlignment: MainAxisAlignment.center,
    children:  [ 
       Text('You have answered $numCorrectQuestions questions out of $numtotalQuestion question '),
       const SizedBox (height: 30,),
       QuestionSummary(getSummarydata()),
       const SizedBox(height: 30,),
      TextButton.icon(onPressed: onRestart, icon: const Icon(Icons.refresh_rounded), 
      label: const Text('Restart Quiz!'),
      style:TextButton.styleFrom( 
        backgroundColor: Colors.blue,
      foregroundColor: Colors.white )),
    ],
   ),
    ),);
    
  }
}