import 'package:parentol/screens/mainpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MainPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF3DA0BF),
        child: Center(
          child: Container(
            width: (MediaQuery.of(context).size.width / 3) * 2,
            child: Center(
                child: Image.asset(
              "assets/parentol_logo.png",
              width: 150,
            )),
          ),
        ),
      ),
    );
  }
}
