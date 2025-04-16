import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_management_app/menuPage.dart';
import 'addStudent.dart';
import 'student_class.dart';

void main() {
  runApp(const StudentData());
}

class StudentData extends StatefulWidget {
  const StudentData({Key? key}) : super(key: key);

  @override
  State<StudentData> createState() => _StudentDataState();
}

class _StudentDataState extends State<StudentData> {

  void _clearStudents() {
    setState(() {
      students.clear();
    });
  }

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
            Text("Student Information",
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
          crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/header.png"),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(onPressed: _clearStudents, child: Text("Clear All",
                          style: TextStyle(
                            color: Colors.white,
                          ),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff0C46C4),
                          ),
                          ),
                        ]
                      ),
                    ),
                    Column(
                     children: List.generate(students.length, (index) {
                       return ListTile(
                        title: Padding(
                          padding: EdgeInsets.only(left: 20,top: 20),
                          child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Divider(color: Colors.grey,thickness: 3,),
                               Text('Full Name:',
                             style: GoogleFonts.openSans(
                             textStyle : TextStyle(
                             color: Colors.blue,
                               fontSize: 17,
                               ),),
                               ),
                                Text(students[index].name,
                                  style: GoogleFonts.openSans(
                                    textStyle : TextStyle(fontSize: 23),
                                  ),),
                                SizedBox(
                                  height: 16,
                                ),
                                Text('Class:',style: GoogleFonts.openSans(
                                  textStyle : TextStyle(color: Colors.blue, fontSize: 17,),
                                ),),
                               Text(students[index].className, style: GoogleFonts.openSans(
                                 textStyle : TextStyle(fontSize: 23,),
                               ),),
                               SizedBox(
                                 height: 16,
                               ),
                               Text('Section:', style: GoogleFonts.openSans(
                                 textStyle : TextStyle(color: Colors.blue, fontSize: 17,),
                               ),),
                                Text(students[index].section, style: GoogleFonts.openSans(
                                  textStyle : TextStyle(
                                    fontSize: 23,
                                  ),),),
                               SizedBox(
                                 height: 16,
                               ),
                                 Text('Age:', style: GoogleFonts.openSans(
                                     textStyle : TextStyle(
                                       color: Colors.blue,
                                       fontSize: 17,
                                     ),),),
                                 Text(students[index].age, style: GoogleFonts.openSans(
                                     textStyle : TextStyle(
                                       fontSize: 23,
                                     ),),),
                               SizedBox(
                                 height: 16,
                               ),
                                Text('Email:', style: GoogleFonts.openSans(
                                    textStyle : TextStyle(
                                      color: Colors.blue,
                                      fontSize: 17,
                                    ),),),
                                Text(students[index].email, style: GoogleFonts.openSans(
                                  textStyle : TextStyle(
                                    fontSize: 23,
                                  ),),),
                             ],
                           ),
                        ),
                       );
                     })
                    ),
                ],
            ),
      ),
    );
  }
}
