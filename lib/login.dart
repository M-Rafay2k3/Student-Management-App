import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Screen1());
}

class Screen1 extends StatelessWidget {
  const Screen1({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/login_header.png',
                  height:512.67,
                  width: 432.34,
                ),
                Text(
                    "Username",
                  style: GoogleFonts.openSans(
                    fontSize:15,
                  ),
                ),
      Column(
        children: [
          Container(
            height: 40,
            width: 356,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
          ),
                Text(
                  "Password",
                  style: GoogleFonts.openSans(
                    fontSize:15,
                  ),
                ),
          Column(
            children: [
              Container(
                height: 40,
                width: 356,
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                ),
              ),
              ],
            ),
          Text(
            "Forgot Password?",
            style: GoogleFonts.openSans(
              fontSize:14.75,
            ),
          ),
        ],
      )],
      ),
    );
  }
}