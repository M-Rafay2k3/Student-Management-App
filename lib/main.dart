import 'package:flutter/material.dart';
import 'package:student_management_app/SplashScreen.dart';
import 'package:student_management_app/attendanceScreens/attendance.dart';
import 'package:student_management_app/marksScreen/marks_screen.dart';
import 'package:student_management_app/menuPage.dart';
import 'package:student_management_app/studentDetailsScreens/addStudent.dart';
import 'package:student_management_app/studentDetailsScreens/student_class.dart';
import 'package:student_management_app/studentDetailsScreens/student_data_list.dart';
import 'package:student_management_app/user_selection.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen()
    );
  }
}
