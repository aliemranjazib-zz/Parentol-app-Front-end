import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parentol/screens/childloginpage.dart';
import 'package:parentol/utils/MyColors.dart';

class GeneratePass extends StatefulWidget {
  @override
  _GeneratePassState createState() => _GeneratePassState();
}

class _GeneratePassState extends State<GeneratePass> {
  TextEditingController password = TextEditingController();
  TextEditingController Conpassword = TextEditingController();

  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                padding: EdgeInsets.only(left: 40, right: 40, top: 15),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 115,
                child: Column(
                  children: [
                    Text(
                      "New Passwords",
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
                      "Please enter now your new Password",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Proxima',
                          color: MyColors.textSelectionColor),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextField(
                      controller: password,
                      obscureText: !this._showPassword,
                      decoration: InputDecoration(
                        labelText: 'New Password',
                        labelStyle: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF9D9D9D),
                        ),
                        hintText: '',
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF9D9D9D),
                        ),
                        alignLabelWithHint: true,
                        contentPadding: const EdgeInsets.only(
                            left: 0.0, bottom: 5.0, top: 10.0),
                        suffixIcon: Container(
                          transform: Matrix4.translationValues(12.0, 13.0, 0.0),
                          child: IconButton(
                            icon: Image(
                              image: Svg('assets/show-password.svg'),
                              width: 20,
                              color: this._showPassword
                                  ? Colors.grey
                                  : Theme.of(context).primaryColor,
                            ),
                            onPressed: () {
                              setState(() =>
                                  this._showPassword = !this._showPassword);
                            },
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: new BorderSide(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: Conpassword,
                      obscureText: !this._showPassword,
                      decoration: InputDecoration(
                        labelText: 'Repeat Password',
                        labelStyle: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF9D9D9D),
                        ),
                        hintText: '',
                        hintStyle:
                            TextStyle(fontSize: 18, color: Color(0xFF9D9D9D)),
                        alignLabelWithHint: true,
                        contentPadding: const EdgeInsets.only(
                            left: 0.0, bottom: 5.0, top: 10.0),
                        suffixIcon: Container(
                          transform: Matrix4.translationValues(12.0, 13.0, 0.0),
                          child: IconButton(
                            icon: Image(
                              image: Svg('assets/show-password.svg'),
                              width: 20,
                              color: this._showPassword
                                  ? Colors.grey
                                  : Theme.of(context).primaryColor,
                            ),
                            onPressed: () {
                              setState(() =>
                                  this._showPassword = !this._showPassword);
                            },
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: new BorderSide(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ),
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
                                  child: CLoginPage()));
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
                              "Confirm Password",
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
