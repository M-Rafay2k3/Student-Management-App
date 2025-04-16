import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_management_app/studentDetailsScreens/addStudent.dart';
import '../menuPage.dart';

void main(){
  runApp(AttendanceScreen());
}
class AttendanceScreen extends StatefulWidget {
  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      leading: IconButton(onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => MenuScreen(),)
        );},
        icon: Icon(Icons.arrow_back_rounded),color: Colors.white,),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Attendance",
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
        body: Column(
          children: [
            Container(
              height: 39,
              width: double.infinity,
              color: Color(0xFF0C46C4).withOpacity(0.75),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Class: Dart',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 100),
                  Text(
                    'DATED:DD/MM/YYYY',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 18,
              width: double.infinity,
              color: Color(0xFF0C46C4).withOpacity(0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Student',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 90),
                  Text(
                    'Present/Absent',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: List.generate(students.length, (index) {
                return ListTile(
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                        value: students[index].isPresent,
                        onChanged: (value) {
                          setState(() {
                            students[index].isPresent = value ?? false;
                            students[index].isAbsent = false;
                          });
                        },
                        activeColor: Colors.green,
                      ),
                      Checkbox(
                        value: students[index].isAbsent,
                        onChanged: (value) {
                          setState(() {
                            students[index].isAbsent = value ?? false;
                            students[index].isPresent = false;
                          });
                        },
                        activeColor: Colors.red,
                      ),
                    ],
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(left: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                Text(students[index].name,
                    style: GoogleFonts.openSans(
                      textStyle : TextStyle(fontSize: 23),
                    ),),
                ]
                )
                  )
                );
              }),
            )
          ],
        )
    );
  }
}