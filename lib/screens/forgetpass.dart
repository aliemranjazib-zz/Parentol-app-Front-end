import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parentol/screens/verify.dart';
import 'package:parentol/utils/MyColors.dart';

class ForgetPass extends StatefulWidget {
  @override
  _ForgetPassState createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                            width: 140,
                            color: Theme.of(context).primaryColor,
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
                padding: EdgeInsets.only(left: 40, right: 40, top: 15),
                height: MediaQuery.of(context).size.height - 115,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Text(
                      "Recover your password",
                      style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'ProximaBold',
                          color: MyColors.textSelectionColor),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Please write your E-mail address below. You will get an email with a PIN number to verify that you are the owner.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Proxima',
                          color: MyColors.textSelectionColor),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        height: 60.0,
                        child: new Directionality(
                            textDirection: TextDirection.ltr,
                            child: new TextField(
                              controller: email,
                              autofocus: false,
                              style: new TextStyle(color: Color(0xFF9D9D9D)),
                              decoration: new InputDecoration(
                                filled: true,
                                fillColor: Colors.transparent,
                                hintText: '',
                                labelText: 'E-mail',
                                labelStyle: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF9D9D9D),
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF9D9D9D),
                                ),
                                alignLabelWithHint: true,
                                contentPadding: const EdgeInsets.only(
                                    left: 0.0, bottom: 5.0, top: 10.0),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Color(0xFF9D9D9D)),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: new BorderSide(
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ),
                            ))),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: Verify()));
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
                              "Save",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'ProximaBold',
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      height: 20,
                    )
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
