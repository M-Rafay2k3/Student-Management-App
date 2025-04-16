import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_management_app/quizScreens/questionClass.dart';
import 'package:student_management_app/quizScreens/question.dart';
import 'package:student_management_app/quizScreens/quizScreen.dart';

void main(){
  runApp(const QuizStart());
}
class QuizStart extends StatefulWidget {
  const QuizStart({super.key});

  @override
  State<QuizStart> createState() => _QuizStartState();
}

class _QuizStartState extends State<QuizStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){Navigator.pop(context);},
            icon: Icon(Icons.arrow_back_outlined),
            color: Colors.white,
          )
          ],
        backgroundColor: Color(0xff0C46C4),
        leading: Image.asset('assets/Exam.png'),
        title:
        Text("Quiz",
        style: TextStyle(color: Colors.white),
        ),
      ),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            Text('Start Quiz',
            style: TextStyle(fontSize: 27),
            ),
            Image.asset('assets/quizImage.png',
            height: 150,
            width: 195,),
            Container(
              height: 49,
              width: 285,
              child: ElevatedButton(onPressed: (){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen()),
                );
              },
                child: Text('Start',
                style: TextStyle(color: Colors.white),
                ),
              style:ElevatedButton.styleFrom(backgroundColor: Color(0xff0C46C4),
              ),
            ),
            ),
                SizedBox(
                  height: 200,
                )
          ],
            ),
          ]
      ),
    );
  }
}
