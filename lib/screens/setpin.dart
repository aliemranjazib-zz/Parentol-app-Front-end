import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_numpad_widget/flutter_numpad_widget.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parentol/screens/createchildprofile.dart';
import 'package:parentol/utils/MyColors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class SetPin extends StatefulWidget {
  @override
  _SetPinState createState() => _SetPinState();
}

class _SetPinState extends State<SetPin> {
  StreamController<ErrorAnimationType> errorController =
      StreamController<ErrorAnimationType>();
  String currentText = '';
  final formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController textEditingController = TextEditingController();
  bool hasError = false;
  final _controller = NumpadController(format: NumpadFormat.PHONE);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Theme.of(context).buttonColor,
                                      width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              padding: EdgeInsets.only(
                                  left: 6, right: 0, bottom: 2, top: 2),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.arrow_back_ios,
                                    color: Theme.of(context).buttonColor,
                                    size: 18,
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Spacer(),
                        Container(
                            padding: EdgeInsets.all(20),
                            child: Image.asset(
                              "assets/parentol_logo.png",
                              color: Theme.of(context).primaryColor,
                              width: 140,
                            )),
                        Spacer(),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 00, right: 00, top: 15),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    verticalDirection: VerticalDirection.down,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 40, right: 40),
                              child: Text(
                                "Verify Pin Number",
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'ProximaBold',
                                    color: MyColors.textSelectionColor),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 40, right: 40),
                              child: Text(
                                "You need to set a new PIN to access Parentol in this device.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 13.0,
                                    fontFamily: 'Proxima',
                                    color: MyColors.textSelectionColor),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 40, right: 40),
                              child: Text(
                                "To unistall it in your child\'s device you need to access ic with your PIN code, otherwise you have to reset the phone.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 13.0,
                                    fontFamily: 'Proxima',
                                    color: MyColors.textSelectionColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: Form(
                          key: formKey,
                          child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 0),
                              child: PinCodeTextField(
                                appContext: context,
                                pastedTextStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                length: 4,
                                obscureText: false,
                                obscuringCharacter: '*',
                                animationType: AnimationType.fade,
                                validator: (v) {
                                  if (v.length < 3) {
                                    return "I'm from validator";
                                  } else {
                                    return null;
                                  }
                                },
                                pinTheme: PinTheme(
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(18),
                                  fieldHeight: 65,
                                  fieldWidth: 65,
                                  inactiveColor: Color(0xFFFBFBFB),
                                  inactiveFillColor: Color(0xFFFBFBFB),
                                  activeColor: Color(0xFFFBFBFB),
                                  disabledColor: Colors.white,
                                  selectedFillColor: Colors.white,
                                  activeFillColor:
                                      hasError ? Colors.orange : Colors.white,
                                ),
                                cursorColor: Theme.of(context).primaryColor,
                                animationDuration: Duration(milliseconds: 300),
                                textStyle: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    height: 1.6,
                                    color: Theme.of(context).primaryColor),
                                backgroundColor: Colors.transparent,
                                enableActiveFill: true,
                                errorAnimationController: errorController,
                                controller: textEditingController,
                                keyboardType: TextInputType.number,
                                boxShadows: [
                                  BoxShadow(
                                    offset: Offset(0, 1),
                                    color: Colors.white,
                                    blurRadius: 0,
                                  )
                                ],
                                onCompleted: (v) {
                                  print("Completed");
                                },
                                // onTap: () {
                                //   print("Pressed");
                                // },
                                onChanged: (value) {
                                  print(value);
                                  setState(() {
                                    currentText = value;
                                  });
                                },
                                beforeTextPaste: (text) {
                                  print("Allowing to paste $text");
                                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                  return true;
                                },
                              )),
                        ),
                      ),
                      Container(
                          height: 200,
                          child: Numpad(
                              controller: _controller,
                              buttonColor: Colors.white,
                              innerPadding: 0,
                              textColor: MyColors.textSelectionColor,
                              buttonTextSize: 26)),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          verticalDirection: VerticalDirection.down,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 40, right: 40),
                              width: MediaQuery.of(context).size.width,
                              height: 45,
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          type: PageTransitionType.rightToLeft,
                                          child: CreateChildProfile()));
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    side: BorderSide(
                                        color: Theme.of(context).buttonColor)),
                                color: Theme.of(context).buttonColor,
                                textColor: Colors.white,
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Next",
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontFamily: 'ProximaBold',
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
