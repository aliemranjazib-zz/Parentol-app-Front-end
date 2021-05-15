import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:parentol/utils/MyColors.dart';

class ParentCard extends StatelessWidget {
  final String title;
  final GestureTapCallback onPressed;
  final Svg img;
  ParentCard(
      {@required this.title, @required this.onPressed, @required this.img});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 10),
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
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(12),
          child: Row(
            children: [
              Container(
                width: 26,
                child: Image(
                  image: img,
                  // image: Svg(
                  //   'assets/about-icon-imprint.svg',
                  // ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                title,
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
    );
  }
}

class InputBox extends StatelessWidget {
  final String hinttext;
  final bool obscure;
  final Widget suffexIcon;
  final void Function(String value) validator;
  final TextEditingController controller;
  final String labeltext;
  final double height, width;
  InputBox(
      {this.hinttext,
      this.height,
      this.width,
      this.controller,
      this.suffexIcon,
      this.obscure = false,
      this.labeltext,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: TextField(
        controller: controller,
        autofocus: false,
        obscureText: obscure,
        style: new TextStyle(color: Color(0xFF9D9D9D)),
        decoration: new InputDecoration(
          filled: true,
          alignLabelWithHint: true,
          fillColor: Colors.transparent,
          hintText: hinttext,
          labelText: labeltext,
          labelStyle: TextStyle(
            fontSize: 18,
            color: Color(0xFF9D9D9D),
          ),
          hintStyle: TextStyle(
            fontSize: 18,
            color: Color(0xFF9D9D9D),
          ),
          contentPadding:
              const EdgeInsets.only(left: 0.0, bottom: 5.0, top: 10.0),
          focusedBorder: UnderlineInputBorder(
            borderSide: new BorderSide(color: Theme.of(context).primaryColor),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: new BorderSide(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton({
    @required this.onPressed,
    @required this.title,
  });
  final GestureTapCallback onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
          side: BorderSide(color: Theme.of(context).buttonColor)),
      color: Theme.of(context).buttonColor,
      textColor: Colors.white,
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 16.0, fontFamily: 'ProximaBold', color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class LoginWithCards extends StatelessWidget {
  final String title;
  final FaIcon icon;
  final GestureTapCallback onPressed;

  const LoginWithCards({
    @required this.title,
    @required this.icon,
    @required this.onPressed,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: Card(
            elevation: 5,
            shadowColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            color: Colors.white,
            child: InkWell(
              onTap: onPressed,
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    icon,
                    Spacer(),
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'ProximaBold',
                          color: Theme.of(context).primaryColor),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )));
  }
}
