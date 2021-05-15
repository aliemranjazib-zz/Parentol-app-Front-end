import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_numpad_widget/flutter_numpad_widget.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parentol/screens/generatepass.dart';
import 'package:parentol/utils/MyColors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Verify extends StatefulWidget {
  @override
  _VerifyState createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
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
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
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
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Theme.of(context).buttonColor,
                              size: 18,
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
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 0, right: 0, top: 15),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 40, right: 40, top: 0),
                      child: Text(
                        "Verify PIN Number",
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'ProximaBold',
                            color: MyColors.textSelectionColor),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 40, right: 40, top: 0),
                      child: Text(
                        "Enter your PIN from your E-mail. If you did not recieve anything, please take a look in your spam folder.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Proxima',
                            color: MyColors.textSelectionColor),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 40, right: 40, top: 0),
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
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 200,
                        child: Numpad(
                            controller: _controller,
                            buttonColor: Colors.white,
                            textColor: MyColors.textSelectionColor,
                            buttonTextSize: 26)),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 40, right: 40, top: 0),
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: GeneratePass()));
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
                              "Verify PIN",
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
