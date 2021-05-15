import 'package:flutter/material.dart';
import 'package:parentol/screens/SplashScreen.dart';
import 'package:get_storage/get_storage.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(),
    );
    // return StreamBuilder<User>(
    //     stream: FirebaseAuth.instance.authStateChanges(),
    //     builder: (context, snapshot) {
    //       if (snapshot.connectionState == ConnectionState.active) {
    //         User user = snapshot.data;
    //         if (user == null) {
    //           return SplashScreen();
    //         }
    //         return AddChildScreen();
    //       } else {
    //         return Scaffold(
    //           body: Center(
    //             child: CircularProgressIndicator(),
    //           ),
    //         );
    //       }
    //     });
  }
}
