import 'package:page_transition/page_transition.dart';
import 'package:parentol/screens/childloginpage.dart';
import 'package:parentol/screens/parentloginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parentol/utils/MyColors.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Image.asset(
                  "assets/parentol_logo.png",
                  color: Theme.of(context).primaryColor,
                  width: 140,
                )),
            Spacer(),
            Column(
              children: [
                Text(
                  "Which Phone Is This?",
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ProximaBold',
                      color: MyColors.textSelectionColor),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 160,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Theme.of(context).primaryColor, width: 1.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    color: Color(0xFFF3FCFF),
                    child: Container(
                      padding: EdgeInsets.only(left: 22, right: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: PLoginPage()));
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  "Parent Phone",
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontFamily: 'ProximaBold',
                                      color: Theme.of(context).primaryColor),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 150,
                                  child: Text(
                                    "This phone will monitor other devices",
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        height: 1.3,
                                        fontFamily: 'Proxima',
                                        color: MyColors.textSelectionColor),
                                  ),
                                ),
                                Spacer()
                              ],
                            ),
                            Spacer(),
                            Image.asset(
                              "assets/setup_graphic_parents.png",
                              width: 120,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 160,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Theme.of(context).buttonColor, width: 1.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    color: Color(0xFFF2FBF7),
                    child: Container(
                      padding: EdgeInsets.only(left: 22, right: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: CLoginPage()));
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Kids Phone",
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontFamily: 'ProximaBold',
                                      color: Theme.of(context).buttonColor),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 140,
                                  child: Text(
                                    "This phone will be monitored from Parent Phone",
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        height: 1.3,
                                        fontFamily: 'Proxima',
                                        color: MyColors.textSelectionColor),
                                  ),
                                ),
                                Spacer()
                              ],
                            ),
                            Spacer(),
                            Image.asset(
                              "assets/setup_graphic_kids.png",
                              width: 120,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
