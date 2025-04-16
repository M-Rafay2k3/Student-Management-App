import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_management_app/studentDetailsScreens/student_class.dart';
import 'package:student_management_app/studentDetailsScreens/student_data_list.dart';

import '../menuPage.dart';

void main() {
  runApp(const AddStudent());
}

List<StudentInformation> students = [];

class AddStudent extends StatefulWidget {
  const AddStudent({Key? key}) : super(key: key);

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController classController = TextEditingController();
  TextEditingController sectionController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MenuScreen(),)
          );},
          icon: Icon(Icons.arrow_back_rounded),color: Colors.white,),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Add Student",
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xff0C46C4),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/menuHeader.png"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your Full Name",
                      labelText: "Full Name",
                      labelStyle: GoogleFonts.openSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff2F80ED)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff2F80ED)),
                      ),
                    ),
                    controller: nameController,
                  ),
                  SizedBox(height: 30),
                  TextField(
                    controller: classController,
                    decoration: InputDecoration(
                      hintText: "Enter your Class",
                      labelText: "Class",
                      labelStyle: GoogleFonts.openSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff2F80ED)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff2F80ED)),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    controller: sectionController,
                    decoration: InputDecoration(
                      hintText: "Enter your Section",
                      labelText: "Section",
                      labelStyle: GoogleFonts.openSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff2F80ED)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff2F80ED)),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    controller: ageController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Enter Age.",
                      labelText: "Your Age.",
                      labelStyle: GoogleFonts.openSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff2F80ED)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff2F80ED)),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Enter your Email ID",
                      labelText: "EMAIL ID",
                      labelStyle: GoogleFonts.openSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff2F80ED)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff2F80ED)),
                      ),
                    ),
                  ),
                  SizedBox(height: 60),
                  Container(
                    height: 49,
                    width: 285,
                    child: ElevatedButton(
                      onPressed: (){
                        students.add(
                        StudentInformation(name: nameController.text, className: classController.text, section: sectionController.text, age: ageController.text, email: emailController.text)
                        );
                        nameController.clear();
                        classController.clear();
                        sectionController.clear();
                        ageController.clear();
                        emailController.clear();
                        },
                      child: Text(
                        'ADD',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff0C46C4),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
