import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_numpad_widget/flutter_numpad_widget.dart';
import 'package:parentol/modal_class/pinmodel.dart';
import 'package:parentol/utils/MyColors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:http/http.dart' as http;

Future<PinModel> createPin(String email, String pin) async {
  final http.Response response = await http.post(
    'https://parentol.seruce.com/api/set-pin',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{'email': email, 'pin': pin}),
  );

  if (response.statusCode == 200) {
    print("success");
    return PinModel.fromJson(jsonDecode(response.body));
  } else {
    print("unsuccess");
    throw Exception('Failed to create parent  pin api send data.');
  }
}

class DevicePin extends StatefulWidget {
  @override
  _DevicePinState createState() => _DevicePinState();
}

class _DevicePinState extends State<DevicePin> {
  //String useremail;
  //FirebaseAuth _auth = FirebaseAuth.instance;
  Future<PinModel> data;
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
      body: Container(
        color: Theme.of(context).accentColor,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/main_background.png",
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomCenter,
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
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
                                        color: Theme.of(context).primaryColor,
                                        width: 2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                padding: EdgeInsets.only(
                                    left: 6, right: 0, bottom: 2, top: 2),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.arrow_back_ios,
                                      color: Theme.of(context).primaryColor,
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
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Child\'s Device PIN',
                            style: TextStyle(
                                fontSize: 24.0,
                                fontFamily: 'ProximaBold',
                                color: Theme.of(context).primaryColor),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 0, right: 0, top: 30),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 40, right: 40, top: 0),
                          child: Text(
                            "Set new PIN in Kid\'s devices to stop them from accessing the app!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Proxima',
                                color: MyColors.textSelectionColor),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10, right: 10, top: 0),
                          child: (data == null)
                              ? Form(
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
                                        length: 6,
                                        obscureText: false,
                                        obscuringCharacter: '*',
                                        animationType: AnimationType.fade,
                                        validator: (v) {
                                          if (v.length < 6) {
                                            return "complete 6 digit pin";
                                          } else {
                                            return null;
                                          }
                                        },
                                        pinTheme: PinTheme(
                                          shape: PinCodeFieldShape.box,
                                          borderRadius:
                                              BorderRadius.circular(18),
                                          fieldHeight: 55,
                                          fieldWidth: 55,
                                          inactiveColor: Color(0xFFFBFBFB),
                                          inactiveFillColor: Color(0xFFFBFBFB),
                                          activeColor: Color(0xFFFBFBFB),
                                          disabledColor: Colors.white,
                                          selectedFillColor: Colors.white,
                                          activeFillColor: hasError
                                              ? Colors.orange
                                              : Colors.white,
                                        ),
                                        cursorColor:
                                            Theme.of(context).primaryColor,
                                        animationDuration:
                                            Duration(milliseconds: 300),
                                        textStyle: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            height: 1.6,
                                            color:
                                                Theme.of(context).primaryColor),
                                        backgroundColor: Colors.transparent,
                                        enableActiveFill: true,
                                        errorAnimationController:
                                            errorController,
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
                                )
                              : FutureBuilder<PinModel>(
                                  future: data,
                                  builder: (context, snapshot) {
                                    if (snapshot.hasData) {
                                      return Text(snapshot.data.pin);
                                    } else if (snapshot.hasError) {
                                      return Text(snapshot.error);
                                    }
                                    return CircularProgressIndicator();
                                  }),
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
                          height: 30,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(left: 40, right: 40, top: 0),
                          height: 45,
                          child: FlatButton(
                            onPressed: () {
                              formKey.currentState.validate();
                              if (currentText.length != 6) {
                                errorController.add(ErrorAnimationType.shake);
                                setState(() {
                                  hasError = true;
                                });
                              } else {
                                createPin(
                                    "useremail", textEditingController.text);
                                print(textEditingController.text);
                                setState(() {
                                  hasError = false;
                                  scaffoldKey.currentState
                                      .showSnackBar(SnackBar(
                                    content: Text('pin set successfully'),
                                    duration: Duration(seconds: 2),
                                  ));
                                });
                              }
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(
                                    color: Theme.of(context).primaryColor)),
                            color: Theme.of(context).buttonColor,
                            textColor: Colors.white,
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Save",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontFamily: 'ProximaBold',
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
