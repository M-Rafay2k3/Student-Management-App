import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_management_app/attendanceScreens/attendance.dart';
import 'package:student_management_app/marksScreen/marks_screen.dart';
import 'package:student_management_app/quizScreens/quizStart.dart';
import 'package:student_management_app/studentDetailsScreens/addStudent.dart';
import 'package:student_management_app/studentDetailsScreens/student_data_list.dart';

void main(){
  runApp(const MenuScreen());
}
class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/menuHeader.png'),
           SizedBox(
             height: 10,
           ),
            Container(
              padding: EdgeInsets.only(left: 10),
              width: 333,
              height: 95,
              decoration: BoxDecoration(
                color: Color(0xff0C46C4),
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome Message ->",
                  style: TextStyle(
                  fontSize: 20,
                    color: Colors.white
                  ),),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Welcome To The School Management System",
                  style: TextStyle(
                  fontSize: 15,
                    color: Colors.white
                  ),)
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ImageButton(assetPath: ('assets/attendance.png'), onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AttendanceScreen(),));
                },
                label: ('Attendance')
                ),
                ImageButton(assetPath: ('assets/Homework.png'), onTap: (){},
                label: ("Homework")),
                ImageButton(assetPath: ('assets/attendance.png'), onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MarksScreen(),));
                },
                label: ("Marks")),
               ]
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ImageButton(assetPath: ('assets/exam_routine.png'), onTap: (){},
                label: ("Exam Routine")),
                ImageButton(assetPath: ('assets/solution.png'), onTap: (){},
                label: ("Solutions")),
                ImageButton(assetPath: ('assets/notice.png'), onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuizStart())
                  );
                },
                label: ("Quiz")),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ImageButton(assetPath: ('assets/add_user.png'), onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddStudent(),));
                },
                    label: ("Add Student")),

                ImageButton(assetPath: ('assets/studentLogo.png'), onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => StudentData(),));
                },
                label: ("Students")),
              ],
            )
          ]
        ),
      ),
    );
  }
}
Widget ImageButton({
  required String assetPath,
  required VoidCallback onTap,
  required label,
}) {
  return InkWell(
    onTap: onTap,
    child: Column(
      children: [
        Container(
          height: 100,
          width: 100,
          child: Image.asset(assetPath,
          color: Color(0xff0C46C4),
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: GoogleFonts.openSans(
            fontSize: 20,
          ),
        ),
      ],
    ),
  );
}

