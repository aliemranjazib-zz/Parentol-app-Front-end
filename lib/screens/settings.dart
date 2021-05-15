import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_numpad_widget/flutter_numpad_widget.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parentol/screens/devicepin.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:parentol/utils/MyColors.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
                            'Settings',
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
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 13, right: 13, top: 10),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: new BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Color(0xFFEEEEEE),
                                offset: Offset(0.0, 10.0),
                                spreadRadius: 1,
                                blurRadius: 25.0,
                              ),
                            ],
                          ),
                          child: Container(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child: Profile()));
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(12),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Image(
                                      image: Svg(
                                          'assets/settings-icon-profile.svg'),
                                      width: 22,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Profile",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'ProximaBold',
                                          color: MyColors.textSelectionColor),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: new BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Color(0xFFEEEEEE),
                                offset: Offset(0.0, 10.0),
                                spreadRadius: 1,
                                blurRadius: 25.0,
                              ),
                            ],
                          ),
                          child: Container(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child: Password()));
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(12),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Image(
                                      image: Svg(
                                          'assets/settings-icon-password.svg'),
                                      width: 22,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Password",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'ProximaBold',
                                          color: MyColors.textSelectionColor),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: new BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Color(0xFFEEEEEE),
                                offset: Offset(0.0, 10.0),
                                spreadRadius: 1,
                                blurRadius: 25.0,
                              ),
                            ],
                          ),
                          child: Container(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child: DevicePin()));
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(12),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Image(
                                      image: Svg(
                                          'assets/settings-icon-childs-pin.svg'),
                                      width: 22,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Child'\s Device PIN",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'ProximaBold',
                                          color: MyColors.textSelectionColor),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: new BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Color(0xFFEEEEEE),
                                offset: Offset(0.0, 10.0),
                                spreadRadius: 1,
                                blurRadius: 25.0,
                              ),
                            ],
                          ),
                          child: Container(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child: Notifications()));
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(12),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Image(
                                      image: Svg(
                                          'assets/settings-icon-notification.svg'),
                                      width: 22,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Notifications",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'ProximaBold',
                                          color: MyColors.textSelectionColor),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: new BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Color(0xFFEEEEEE),
                                offset: Offset(0.0, 10.0),
                                spreadRadius: 1,
                                blurRadius: 25.0,
                              ),
                            ],
                          ),
                          child: Container(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child: Language()));
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(12),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Image(
                                      image: Svg(
                                          'assets/settings-icon-language.svg'),
                                      width: 22,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Language",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'ProximaBold',
                                          color: MyColors.textSelectionColor),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ],
                                ),
                              ),
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

// Profile Page of Settings
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();

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
                            'Profile',
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
                    padding: EdgeInsets.only(left: 40, right: 40, top: 10),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                            height: 60.0,
                            child: new Directionality(
                                textDirection: TextDirection.ltr,
                                child: new TextField(
                                  controller: name,
                                  autofocus: true,
                                  style: new TextStyle(
                                      color: Color(0xFF9D9D9D), fontSize: 18),
                                  decoration: new InputDecoration(
                                    filled: true,
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    fillColor: Colors.transparent,
                                    hintText: 'Jon',
                                    labelText: 'Your Name',
                                    labelStyle: TextStyle(
                                      fontSize: 16,
                                      color: MyColors.textSelectionColor,
                                    ),
                                    contentPadding: const EdgeInsets.only(
                                        left: 0.0, bottom: 00.0, top: 5.0),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                          color:
                                              Theme.of(context).primaryColor),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                  ),
                                ))),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            height: 60.0,
                            child: new Directionality(
                                textDirection: TextDirection.ltr,
                                child: new TextField(
                                  controller: email,
                                  autofocus: false,
                                  style: new TextStyle(
                                      color: Color(0xFF9D9D9D), fontSize: 18),
                                  decoration: new InputDecoration(
                                    filled: true,
                                    fillColor: Colors.transparent,
                                    hintText: 'jon@gmail.com',
                                    labelText: 'Your E-mail',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    labelStyle: TextStyle(
                                      fontSize: 16,
                                      color: MyColors.textSelectionColor,
                                    ),
                                    contentPadding: const EdgeInsets.only(
                                        left: 0.0, bottom: 00.0, top: 5.0),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                          color:
                                              Theme.of(context).primaryColor),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: new BorderSide(
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                  ),
                                ))),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 50,
                          height: 45,
                          child: FlatButton(
                            onPressed: () {},
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

// Change Password of Settings
class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool _showPassword = false;
  TextEditingController oldpassword = TextEditingController();
  TextEditingController newpassword = TextEditingController();
  TextEditingController conpassword = TextEditingController();

  String pass = "afadsf";

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
                            'Password',
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
                    padding: EdgeInsets.only(left: 40, right: 40, top: 10),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        TextFormField(
                          obscureText: !this._showPassword,
                          initialValue: pass,
                          style: new TextStyle(
                              color: Color(0xFF9D9D9D), fontSize: 20),
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: 'Old Password',
                            labelStyle: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF9D9D9D),
                            ),
                            hintText: '',
                            hintStyle: TextStyle(
                              color: Color(0xFF9D9D9D),
                            ),
                            alignLabelWithHint: true,
                            contentPadding: const EdgeInsets.only(
                                left: 0.0, bottom: 5.0, top: 10.0),
                            suffixIcon: Container(
                              transform:
                                  Matrix4.translationValues(12.0, 13.0, 0.0),
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
                          controller: newpassword,
                          obscureText: !this._showPassword,
                          style: new TextStyle(
                              color: Color(0xFF9D9D9D), fontSize: 20),
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: 'New Password',
                            labelStyle: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF9D9D9D),
                            ),
                            hintText: '',
                            hintStyle: TextStyle(
                              color: Color(0xFF9D9D9D),
                            ),
                            alignLabelWithHint: true,
                            contentPadding: const EdgeInsets.only(
                                left: 0.0, bottom: 5.0, top: 10.0),
                            suffixIcon: Container(
                              transform:
                                  Matrix4.translationValues(12.0, 13.0, 0.0),
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
                          controller: conpassword,
                          obscureText: !this._showPassword,
                          style: new TextStyle(
                              color: Color(0xFF9D9D9D), fontSize: 20),
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: 'Repeat New Password',
                            labelStyle: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF9D9D9D),
                            ),
                            hintText: '',
                            hintStyle: TextStyle(
                              color: Color(0xFF9D9D9D),
                            ),
                            alignLabelWithHint: true,
                            contentPadding: const EdgeInsets.only(
                                left: 0.0, bottom: 5.0, top: 10.0),
                            suffixIcon: Container(
                              transform:
                                  Matrix4.translationValues(12.0, 13.0, 0.0),
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
                          height: 30,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 40,
                          height: 45,
                          child: FlatButton(
                            onPressed: () {},
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

// Set Device Pin Page of Settings

// Notification Page of Settings

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool switch1 = false;
  bool switch2 = false;

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
                            'Notifications',
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
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10, right: 10, top: 2),
                          width: MediaQuery.of(context).size.width,
                          decoration: new BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Color(0xFFEEEEEE),
                                offset: Offset(0.0, 10.0),
                                spreadRadius: 1,
                                blurRadius: 25.0,
                              ),
                            ],
                          ),
                          child: Container(
                            child: ListTile(
                              title: Text(
                                "Notify me when Child\'s phones reached time limit",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: 'Proxima',
                                    color: MyColors.textSelectionColor),
                              ),
                              trailing: FlutterSwitch(
                                width: 38.0,
                                height: 21.0,
                                valueFontSize: 11.0,
                                toggleSize: 20.0,
                                value: switch1,
                                activeColor: Theme.of(context).buttonColor,
                                borderRadius: 30.0,
                                padding: 2.0,
                                activeText: "",
                                inactiveText: "",
                                showOnOff: true,
                                onToggle: (val) {
                                  setState(() {
                                    switch1 = val;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10, right: 10, top: 2),
                          width: MediaQuery.of(context).size.width,
                          decoration: new BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Color(0xFFEEEEEE),
                                offset: Offset(0.0, 10.0),
                                spreadRadius: 1,
                                blurRadius: 25.0,
                              ),
                            ],
                          ),
                          child: Container(
                            child: ListTile(
                              title: Text(
                                "Notify me when Child\'s install new apps",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: 'Proxima',
                                    color: MyColors.textSelectionColor),
                              ),
                              trailing: FlutterSwitch(
                                width: 38.0,
                                height: 21.0,
                                valueFontSize: 11.0,
                                toggleSize: 20.0,
                                value: switch2,
                                borderRadius: 30.0,
                                padding: 2.0,
                                activeText: "",
                                inactiveText: "",
                                activeColor: Theme.of(context).buttonColor,
                                inactiveColor: Colors.grey,
                                showOnOff: true,
                                onToggle: (val) {
                                  setState(() {
                                    switch2 = val;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 80,
                          height: 45,
                          child: FlatButton(
                            onPressed: () {},
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Language Page of Settings
class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  List<String> languageName = [
    "English",
    "German",
    "French",
    "Italian",
    "Turkish",
    "Arabic",
    "Chinese",
  ];

  List<bool> isHighlighted = [true, false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stack(
        children: [
          Container(
            color: Theme.of(context).accentColor,
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/main_background.png"),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.bottomCenter)),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                child: Stack(
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                width: 2),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8))),
                                        padding: EdgeInsets.only(
                                            left: 6,
                                            right: 0,
                                            bottom: 2,
                                            top: 2),
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.arrow_back_ios,
                                              color: Theme.of(context)
                                                  .primaryColor,
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
                                    'Language',
                                    style: TextStyle(
                                        fontSize: 24.0,
                                        fontFamily: 'ProximaBold',
                                        color: Theme.of(context).primaryColor),
                                  )
                                ],
                              ),
                            ),
                          ),
                          ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: languageName.length,
                              itemBuilder: (BuildContext ctxt, int index) {
                                return GestureDetector(
                                  onTap: () {
                                    for (int i = 0;
                                        i < isHighlighted.length;
                                        i++) {
                                      setState(() {
                                        print("done");
                                        if (index == i) {
                                          isHighlighted[index] = true;
                                        } else {
                                          //the condition to change the highlighted item
                                          isHighlighted[i] = false;
                                        }
                                      });
                                    }
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: 20, right: 20, bottom: 10),
                                    padding: EdgeInsets.only(
                                        left: 10, right: 10, top: 0),
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: new BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Colors.white,
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                          color: Color(0xFFEEEEEE),
                                          offset: Offset(0.0, 10.0),
                                          spreadRadius: 1,
                                          blurRadius: 25.0,
                                        ),
                                      ],
                                    ),
                                    child: Container(
                                      child: ListTile(
                                        title: Text(
                                          languageName[index],
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: 'ProximaBold',
                                              color:
                                                  MyColors.textSelectionColor),
                                        ),
                                        trailing: Container(
                                          decoration: new BoxDecoration(
                                            color: isHighlighted[index]
                                                ? Theme.of(context).buttonColor
                                                : Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          padding: EdgeInsets.all(2),
                                          child: Icon(
                                            Icons.done,
                                            size: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 80,
                            height: 50,
                            child: FlatButton(
                              onPressed: () {},
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
                          SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
