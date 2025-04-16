import 'package:flutter/material.dart';
import 'package:student_management_app/menuPage.dart';


void main() {
  runApp(UserSelection());
}

class UserSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Image.asset("assets/login_header.png",
                width: double.infinity,
              ),
              SizedBox(height: 20),
              Text(
                'Choose Your Option',
                style: TextStyle(
                  color: Color(0xFF0C46C4), // Text color code
                  fontFamily: 'opensans', // Font family
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFF0C46C4),
                    ),
                    padding: EdgeInsets.all(5),
                    child: Image.asset("assets/studentLogoWhite.png"),
                  ),
                  SizedBox(width: 1),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFF0C46C4),
                    ),
                    padding: EdgeInsets.all(5),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context) => MenuScreen(),)
                          );
                        },
                        child: Image.asset("assets/teacherLogo.png")),
                  ),
                ],
              ),
              SizedBox(height: 8), // Gap between images row and text row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Student',
                    style: TextStyle(
                      fontFamily: 'opensans',
                    ),
                  ),
                  SizedBox(width: 1),
                  Text(
                    'Teacher',
                    style: TextStyle(
                      fontFamily: 'opensans',
                    ),), // Text beneath second image
                ],
              ),
              SizedBox(height: 30),
              Container(
                  width: 100,
                  height: 100,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF0C46C4),
                  ),
                  child: Image.asset('assets/person.png')), // Third image
              SizedBox(height: 5), // Gap between third image and text
              Text(
                'Guest',
                style: TextStyle(
                  fontFamily: 'opensans', // Font family
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}