import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:parentol/modal_class/signup.dart';
import 'package:parentol/remote_services/Services.dart';
import 'package:parentol/screens/parentloginpage.dart';
import 'package:parentol/utils/MyColors.dart';
import 'package:parentol/utils/customewidgets.dart';
import 'package:parentol/utils/header.dart';
import 'about.dart';
import 'package:http/http.dart' as http;

class PSignupPage extends StatefulWidget {
  @override
  _PSignupPageState createState() => _PSignupPageState();
}

class _PSignupPageState extends State<PSignupPage> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  Future<SignUp> data;
  Services service = Services();

  bool _showPassword = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          //color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Header(),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 40, right: 40, top: 15),
                width: MediaQuery.of(context).size.width,
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0))),
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
                    (data == null)
                        ? Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                InputBox(
                                  labeltext: 'Parent\'s name',
                                  controller: name,
                                  validator: (val) {
                                    if (val.length < 3) {
                                      return 'minimun 3 character';
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                                InputBox(
                                  controller: email,
                                  labeltext: 'E-mail',
                                  validator: (value) {
                                    Pattern pattern =
                                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                    RegExp regex = new RegExp(pattern);
                                    return (regex.hasMatch(value))
                                        ? null
                                        : 'Please enter valid email address';
                                  },
                                ),
                                InputBox(
                                  controller: password,
                                  labeltext: "Password",
                                  obscure: !_showPassword,
                                  suffexIcon: GestureDetector(
                                    child: _showPassword == false
                                        ? Icon(
                                            FontAwesomeIcons.eyeSlash,
                                            size: 18,
                                            color: MyColors.primaryColor,
                                          )
                                        : Icon(
                                            FontAwesomeIcons.eye,
                                            size: 18,
                                            color: MyColors.buttonColor,
                                          ),
                                    onTap: () {
                                      setState(() {
                                        if (_showPassword == true) {
                                          _showPassword = false;
                                        } else {
                                          _showPassword = false;
                                        }
                                      });
                                    },
                                  ),
                                  validator: (value) {
                                    if (value.length < 8) {
                                      return 'minimum 8 character';
                                    }
                                    return null;
                                  },
                                ),
                                _confirmPasswordTextField(),
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                        "By clicking register, you agree to our",
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
                                                    type: PageTransitionType
                                                        .rightToLeft,
                                                    child: Terms()));
                                          },
                                          child: Text("Terms and Conditions",
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Theme.of(context)
                                                      .primaryColor)),
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
                                                    type: PageTransitionType
                                                        .rightToLeft,
                                                    child: Privacy()));
                                          },
                                          child: Text("Privacy Policy",
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color: Theme.of(context)
                                                      .primaryColor)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 45,
                                  child: FlatButton(
                                    onPressed: () async {
                                      if (_formKey.currentState.validate()) {
                                        data = service.createParentAccount(
                                          name.text,
                                          email.text,
                                          password.text,
                                        );
                                      }
                                      if (data != null) {
                                        Get.to(PLoginPage());
                                      }
                                    },
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        side: BorderSide(
                                            color:
                                                Theme.of(context).buttonColor)),
                                    color: Theme.of(context).buttonColor,
                                    textColor: Colors.white,
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Register",
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontFamily: 'ProximaBold',
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ))
                        : FutureBuilder<SignUp>(
                            future: data,
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return Text(snapshot.data.name);
                              } else if (snapshot.hasError) {
                                return Text(snapshot.error);
                              }
                              return CircularProgressIndicator();
                            }),
                    SizedBox(
                      height: 10,
                    )
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
    return TextFormField(
      controller: password,
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
              width: 120,
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
    return TextFormField(
      controller: confirmpassword,
      validator: (String value) {
        if (password.text != confirmpassword.text) {
          return "Password does not match";
        } else {
          return null;
        }
      },
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
