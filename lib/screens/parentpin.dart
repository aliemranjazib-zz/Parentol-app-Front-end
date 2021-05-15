import 'package:flutter/material.dart';
import 'package:parentol/utils/header.dart';

class ParentPin extends StatefulWidget {
  @override
  _ParentPinState createState() => _ParentPinState();
}

class _ParentPinState extends State<ParentPin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding: EdgeInsets.all(40),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/main_background.png",
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomCenter,
              ),
            ),
           Header(),
           SizedBox(
             height: 40,
           )
          ],
        ),
      ),
    );
  }
}
