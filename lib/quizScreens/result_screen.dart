import 'package:flutter/material.dart';
import 'package:student_management_app/menuPage.dart';
import 'package:student_management_app/quizScreens/answers.dart';
import 'package:student_management_app/quizScreens/button.dart';
import 'package:student_management_app/quizScreens/question.dart';
import 'package:student_management_app/quizScreens/quizScreen.dart';
import 'package:student_management_app/quizScreens/quizStart.dart';


class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.score,
  });

  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0C46C4),
        leading: Image.asset('assets/Exam.png'),
        title:
        Text("Quiz",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(width: 1000),
          const Text(
            ' Score: ',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w500,
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: 250,
                width: 250,
                child:
              Column(
                children: [
                  Text(
                   'Score: $score',
                    style: TextStyle(fontSize: 25),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Total: ${questions.length} ',
                    style: const TextStyle(fontSize: 25),
                  )
                ],
              ),
              ),
            ],
          ),
          Container(
            width: 250,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xff0C46C4),
                width: 3
              ),
            ),
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => QuizScreen(),),);
              },
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder()),
                child: Text("RESTART",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18
                ),)),
          ),
          Container(
            width: 250,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Color(0xff0C46C4),
                  width: 3
              ),
            ),
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MenuScreen(),),);
            },
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder()),
                child: Text("Go Back",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18
                  ),)),
          )
        ],
      ),
    );
  }
}