import 'package:flutter/material.dart';
class StartScreen extends StatelessWidget {
   const StartScreen ( this.startQuiz,{super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return  Center (child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/quiz-logo.png",width: 350,
        color: const Color.fromARGB(123, 250, 250, 250),),
        
       const SizedBox(height: 40,),
    const Text("Learn flutter the fun Way!",style: TextStyle(color: Colors.white,fontSize: 25),
    ),
    const SizedBox(height: 25,),
    OutlinedButton.icon
    (onPressed: ( ) {
    startQuiz();
    },
    style:OutlinedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.deepPurple,
    ),
    icon: const Icon(Icons.arrow_circle_right_outlined),
     label: const Text("Start Quiz")
    )

      ],
    ),);
  }
}
