import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parentol/utils/MyColors.dart';
import 'package:parentol/utils/customewidgets.dart';
import 'package:get/get.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
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
                            'About',
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
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        ParentCard(
                            title: 'Tems of Service',
                            onPressed: () {
                              Get.to(Terms());
                            },
                            img: Svg(
                              'assets/about-terms.svg',
                            )),
                       
                        SizedBox(
                          height: 10,
                        ),
                       
                       ParentCard(
                            title: 'Privacy',
                            onPressed: () {
                              Get.to(Privacy());
                            },
                            img: Svg(
                              'assets/about-privacy.svg',
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        ParentCard(
                          title: 'Imprint',
                          onPressed: () {
                            Get.to(Imprint());
                          },
                          img: Svg(
                            'assets/about-icon-imprint.svg',
                          ),
                        ),
                       
                        SizedBox(
                          height: 10,
                        ),

                          ParentCard(
                          title: 'Rate this app',
                          onPressed: () {
                            Get.to(Rate());
                          },
                          img: Svg(
                            'assets/about-rate.svg',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ParentCard(
                          title: 'Share this app',
                          onPressed: () {
                            Get.to(Share());
                          },
                          img: Svg(
                            'assets/about-share.svg',
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

class Terms extends StatefulWidget {
  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).accentColor,
        child: Column(
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
                      'Terms of Service',
                      style: TextStyle(
                          fontSize: 24.0,
                          fontFamily: 'ProximaBold',
                          color: Theme.of(context).primaryColor),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Privacy extends StatefulWidget {
  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).accentColor,
        child: Column(
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
                      'Privacy',
                      style: TextStyle(
                          fontSize: 24.0,
                          fontFamily: 'ProximaBold',
                          color: Theme.of(context).primaryColor),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Imprint extends StatefulWidget {
  @override
  _ImprintState createState() => _ImprintState();
}

class _ImprintState extends State<Imprint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).accentColor,
        child: Column(
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
                      'Imprint',
                      style: TextStyle(
                          fontSize: 24.0,
                          fontFamily: 'ProximaBold',
                          color: Theme.of(context).primaryColor),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Rate extends StatefulWidget {
  @override
  _RateState createState() => _RateState();
}

class _RateState extends State<Rate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).accentColor,
        child: Column(
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
                      'Rate this app',
                      style: TextStyle(
                          fontSize: 24.0,
                          fontFamily: 'ProximaBold',
                          color: Theme.of(context).primaryColor),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Share extends StatefulWidget {
  @override
  _ShareState createState() => _ShareState();
}

class _ShareState extends State<Share> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).accentColor,
        child: Column(
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
                      'Share this app',
                      style: TextStyle(
                          fontSize: 24.0,
                          fontFamily: 'ProximaBold',
                          color: Theme.of(context).primaryColor),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
