import 'package:flutter/material.dart';
import 'package:student_management_app/menuPage.dart';
import 'package:student_management_app/user_selection.dart';

void main(){
  runApp(const SplashScreen());
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => UserSelection()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/header.png'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png')
            ],
          ),
          SizedBox(
            height: 10,
          ),

          Stack(
            alignment: Alignment.center,
            children:[
          Image.asset('assets/footer.png',
          width: double.infinity,
          height: 100,),
              Text("Powered By M.Rafay And Abdur Rehman",
              style: TextStyle(
                color: Colors.white,
                fontSize: 13
              ),
              ),
          ]
          ),

        ],
      ),
    );
  }
}
