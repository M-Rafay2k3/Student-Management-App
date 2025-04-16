import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_management_app/quizScreens/question.dart';
import 'package:student_management_app/menuPage.dart';
import 'package:student_management_app/quizScreens/button.dart';
import 'package:student_management_app/quizScreens/answers.dart';
import 'package:student_management_app/quizScreens/result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}
class _QuizScreenState extends State<QuizScreen> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int score = 0;

  void pickAnswer(int value) {
    selectedAnswerIndex = value;
    final question = questions[questionIndex];
    if (selectedAnswerIndex == question.correctAnswerIndex) {
      score++;
    }
    setState(() {});
  }

  void goToNextQuestion() {
    if (questionIndex < questions.length - 1 ) {
      questionIndex++;
      selectedAnswerIndex = null;
    }
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
  final question = questions[questionIndex];
  bool isLastQuestion = questionIndex == questions.length - 1;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MenuScreen())
            );
          },
              icon: Icon(Icons.arrow_back_outlined),
          color: Colors.white,
          )
        ],
        backgroundColor: Color(0xff0C46C4),
        leading: Image.asset('assets/Exam.png'),
        title: Text("Quiz",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child:
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(question.question,
                textAlign: TextAlign.center,
                ),
                ListView.builder(
                    shrinkWrap: true ,
                    itemCount: question.options.length,
                    itemBuilder: (context, index) {
                      return  GestureDetector(
                        onTap: selectedAnswerIndex == null
                            ? () => pickAnswer(index)
                            : null,
                        child: AnswerCard(
                          currentIndex: index,
                          question: question.options[index],
                          isSelected: selectedAnswerIndex == index,
                          selectedAnswerIndex: selectedAnswerIndex,
                          correctAnswerIndex: question.correctAnswerIndex,
                        ),
                      );
                    },
                ),
                isLastQuestion ?
                     RectangularButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => ResultScreen(
                          score: score,
                        ),
                      ),
                    );
                  },
                  label: 'Finish',
                )
                    : RectangularButton(
                  onPressed:
                  selectedAnswerIndex != null ? goToNextQuestion : null,
                  label: 'Next',
                ),
              ],
          ),
      ),
    );
  }
}
