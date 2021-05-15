import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class HomeTab extends StatefulWidget {
  @override
  HomeTabState createState() {
    return new HomeTabState();
  }
}

class HomeTabState extends State<HomeTab> {
  final List<String> apps = <String>['Facebook', 'Snapchat', 'Tiktok'];

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
                child: Container(
                    child: Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Container(
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
                              'Lisa',
                              style: TextStyle(
                                  fontSize: 24.0,
                                  fontFamily: 'ProximaBold',
                                  color: Theme.of(context).primaryColor),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 115,
                        decoration: new BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(25.0),
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
                              //Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: TimeTab()));
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(
                                  left: 30, right: 30, top: 15, bottom: 15),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Screen time left",
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            fontFamily: 'Proxima',
                                            color: Colors.grey[600]),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "10:40".toUpperCase(),
                                        style: TextStyle(
                                            fontSize: 40.0,
                                            fontFamily: 'ProximaBold',
                                            color: Color(0xFF41B781)),
                                      ),
                                      Spacer()
                                    ],
                                  ),
                                  Spacer(),
                                  Image(
                                    image: Svg('assets/clock.svg'),
                                  )
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
                        margin: EdgeInsets.only(left: 40, right: 40),
                        child: Row(
                          children: [
                            Text(
                              "Add time",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontFamily: 'ProximaBold',
                                  color: Theme.of(context).buttonColor),
                            ),
                            Spacer(),
                            Text(
                              "Lock",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontFamily: 'ProximaBold',
                                  color: Colors.red[700]),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: new BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(25.0),
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
                              //Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: TimeTab()));
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 30, right: 30, top: 15, bottom: 15),
                              height: 230,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Most used apps Today",
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: 'Proxima',
                                        color: Colors.grey[600]),
                                  ),
                                  Expanded(
                                    child: ListView.builder(
                                        itemCount: apps.length,
                                        physics: NeverScrollableScrollPhysics(),
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Image.asset(
                                                    "assets/avatar_dog.png",
                                                    width: 40,
                                                  ),
                                                  SizedBox(
                                                    width: 15,
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width -
                                                            160,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              apps[index],
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      20.0,
                                                                  fontFamily:
                                                                      'ProximaBold',
                                                                  color: Color(
                                                                      0xFF636363)),
                                                            ),
                                                            Spacer(),
                                                            Text(
                                                              "1:21 hours",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      12.0,
                                                                  fontFamily:
                                                                      'Proxima',
                                                                  color: Color(
                                                                      0xFF636363)),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Container(
                                                          height: 1,
                                                          color:
                                                              Color(0xFF636363),
                                                          child:
                                                              LinearPercentIndicator(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width -
                                                                160,
                                                            lineHeight: 4.0,
                                                            percent: 0.3,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            progressColor:
                                                                Color(
                                                                    0xFF41B781),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 15,
                                              )
                                            ],
                                          );
                                        }),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: new BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(25.0),
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
                          /*elevation: 5,
                            shadowColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            color: Colors.white,*/
                          child: InkWell(
                            onTap: () {
                              //Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: TimeTab()));
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(
                                  left: 30, right: 30, top: 15, bottom: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Current Location",
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: 'Proxima',
                                        color: Colors.grey[600]),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 150,
                                        child: Text(
                                          "Bluemen Street 15, 12425 Silicon Valley, USA",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              fontFamily: 'ProximaBold',
                                              color: Theme.of(context)
                                                  .primaryColor),
                                        ),
                                      ),
                                      Spacer(),
                                      Image(
                                        image: Svg('assets/mobile.svg'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                )),
              )),
        ],
      ),
    );
  }
}
