import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parentol/screens/about.dart';
import 'package:parentol/utils/MyColors.dart';
import 'childloginpage.dart';

class CSignupPage extends StatefulWidget {
  @override
  _CSignupPageState createState() => _CSignupPageState();
}

class _CSignupPageState extends State<CSignupPage> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

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
                      "Registration",
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'ProximaBold',
                          color: MyColors.textSelectionColor),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Please write your E-mail address below. You will get an E-mail with a PIN number to verify that you are a owner.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'Proxima',
                          color: MyColors.textSelectionColor),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Container(
                        child: new Directionality(
                            textDirection: TextDirection.ltr,
                            child: new TextField(
                              controller: name,
                              autofocus: false,
                              style: new TextStyle(color: Color(0xFF9D9D9D)),
                              decoration: new InputDecoration(
                                filled: true,
                                fillColor: Colors.transparent,
                                hintText: '',
                                labelText: 'Parent\'s Name',
                                labelStyle: TextStyle(color: Color(0xFF9D9D9D)),
                                hintStyle: TextStyle(color: Color(0xFF9D9D9D)),
                                alignLabelWithHint: true,
                                contentPadding: const EdgeInsets.only(
                                    left: 0.0, bottom: 5.0, top: 10.0),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: new BorderSide(
                                      color: Theme.of(context).primaryColor),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: new BorderSide(
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ),
                            ))),
                    Container(
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
                                labelStyle: TextStyle(color: Color(0xFF9D9D9D)),
                                hintStyle: TextStyle(color: Color(0xFF9D9D9D)),
                                alignLabelWithHint: true,
                                contentPadding: const EdgeInsets.only(
                                    left: 0.0, bottom: 5.0, top: 10.0),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: new BorderSide(
                                      color: Theme.of(context).primaryColor),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: new BorderSide(
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ),
                            ))),
                    _buildPasswordTextField(),
                    _confirmPasswordTextField(),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("By clicking register, you agree to our",
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600])),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child: Terms()));
                              },
                              child: Text("Terms and Conditions",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).primaryColor)),
                            ),
                            Text(" and ",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[600])),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child: Privacy()));
                              },
                              child: Text("Privacy Policy",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).primaryColor)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
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
                              "Register",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'ProximaBold',
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomPadding: false,
    );
  }

  Widget _buildPasswordTextField() {
    return TextField(
      controller: password,
      obscureText: !this._showPassword,
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(color: Color(0xFF9D9D9D)),
        hintText: '',
        hintStyle: TextStyle(color: Color(0xFF9D9D9D)),
        alignLabelWithHint: true,
        contentPadding:
            const EdgeInsets.only(left: 0.0, bottom: 5.0, top: 10.0),
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
              setState(() => this._showPassword = !this._showPassword);
            },
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: new BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }

  Widget _confirmPasswordTextField() {
    return TextField(
      controller: confirmpassword,
      obscureText: !this._showPassword,
      decoration: InputDecoration(
        labelText: 'Repeat Password',
        labelStyle: TextStyle(color: Color(0xFF9D9D9D)),
        hintText: '',
        hintStyle: TextStyle(color: Color(0xFF9D9D9D)),
        alignLabelWithHint: true,
        contentPadding:
            const EdgeInsets.only(left: 0.0, bottom: 5.0, top: 10.0),
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
              setState(() => this._showPassword = !this._showPassword);
            },
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: new BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
