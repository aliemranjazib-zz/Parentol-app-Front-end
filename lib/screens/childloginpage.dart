import 'package:flutter/widgets.dart';
import 'package:parentol/remote_services/Services.dart';
import 'package:parentol/screens/forgetpass.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:parentol/screens/selectchildsphonechildside.dart';
import 'package:parentol/utils/customewidgets.dart';
import 'package:parentol/utils/header.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:parentol/utils/MyColors.dart';

class CLoginPage extends StatefulWidget {
  @override
  _CLoginPageState createState() => _CLoginPageState();
}

class _CLoginPageState extends State<CLoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool _showPassword = false;

  bool isSignIn = false;
  Services signin = Services();

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
                    Text(
                      "Log In To Your Account",
                      style: texttheme.headline1,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InputBox(
                      controller: email,
                      labeltext: 'email',
                    ),
                    InputBox(
                      controller: password,
                      labeltext: 'password',
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
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        child: CustomButton(
                          title: 'login',
                          onPressed: () async {
                            await signin.signIn(email.text, password.text).then(
                                (value) =>
                                    Get.to(SelectChildsPhoneChildeSide()));
                          },
                        )),
                    SizedBox(
                      height: 5,
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
