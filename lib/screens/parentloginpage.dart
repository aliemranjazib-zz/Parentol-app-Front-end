import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parentol/remote_services/Services.dart';
import 'package:parentol/screens/forgetpass.dart';
import 'package:parentol/screens/parentsignuppage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parentol/utils/customewidgets.dart';
import 'package:parentol/utils/header.dart';
import 'package:parentol/utils/MyColors.dart';
import 'package:get_storage/get_storage.dart';

class PLoginPage extends StatefulWidget {
  @override
  _PLoginPageState createState() => _PLoginPageState();
}

class _PLoginPageState extends State<PLoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _showPassword = true;
  bool isSignIn = false;
  Services signin = new Services();
  final pmail = GetStorage();
  // facebook data //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
              Header(),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 40, right: 40, top: 15),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Text("Log In To Your Account", style: texttheme.headline1),
                    SizedBox(
                      height: 20,
                    ),
                    InputBox(
                      hinttext: 'E-mail',
                      controller: email,
                    ),
                    InputBox(
                      hinttext: 'Password',
                      controller: password,
                      obscure: !this._showPassword,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(ForgetPass());
                          },
                          child: Text("Forget your password?",
                              style: texttheme.headline2),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    CustomButton(
                        onPressed: () async {
                          signin.signIn(email.text, password.text);
                          
                        },
                        title: 'login'),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don\'t have an account? ",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: MyColors.textSelectionColor)),
                          InkWell(
                            onTap: () {
                              Get.to(PSignupPage());
                            },
                            child: Text("Sign up here!",
                                style: texttheme.headline3),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    LoginWithCards(
                      title: 'Login with google',
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.google,
                        size: 20,
                        color: MyColors.primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    LoginWithCards(
                      title: 'Login with Facebook',
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.facebookF,
                        size: 20,
                        color: MyColors.primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 55,
                    ),
                    SizedBox(
                      height: 10,
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
