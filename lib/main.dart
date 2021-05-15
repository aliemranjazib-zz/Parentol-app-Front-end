import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parentol/screens/landpage.dart';
import 'package:get_storage/get_storage.dart';

//add async after main fucntion if you dont want to see blank
void main() async {
  //SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  HttpOverrides.global = new MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parentol',
      theme: ThemeData(
          primaryColor: Color(0xFF3DA0BF),
          accentColor: Color(0xFFF3F7FA),
          buttonColor: Color(0xFF41B781),
          fontFamily: 'Proxima'),

      //home: Testing(),
      home: LandingPage(),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
