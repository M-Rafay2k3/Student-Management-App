import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void switchToLoginPage() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Screen1()));
  }

  @override
  void initState() {
    print("call hogaya");
    Future.delayed(const Duration(seconds: 5), switchToLoginPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Image.asset(
              "assets/header.png",
            width: double.infinity,
          ),
          const Spacer(),

          Image.asset(
            "assets/logo.png",
            height: 212.8,
            width: 173.52,
          ),
          const Spacer(),

         Image.asset(
           "assets/footer.png",
           height: 432.24,
           width: double.infinity,
         ),
          Text("Powered by:XYZ COM",
          style: GoogleFonts.lato(
            fontSize: 12,
            ),
          ),


        ]),
      ),
    );
  }
}
