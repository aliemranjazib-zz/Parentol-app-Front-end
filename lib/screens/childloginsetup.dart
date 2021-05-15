import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parentol/screens/addchilde.dart';
import 'package:parentol/utils/MyColors.dart';
import 'package:parentol/utils/header.dart';

class ChildSetup extends StatefulWidget {
  @override
  _ChildSetupState createState() => _ChildSetupState();
}

class _ChildSetupState extends State<ChildSetup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: SingleChildScrollView(
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
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    verticalDirection: VerticalDirection.down,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            Text(
                              "Setup Your Child\'s Device",
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'ProximaBold',
                                color: MyColors.textSelectionColor,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "You need now to install Parentol to your child\'s phone, login with your Email in the Child mode and setup the device.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Proxima',
                                color: MyColors.textSelectionColor,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              "assets/setup_graphic_parent_phone.png",
                              height: 280,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          verticalDirection: VerticalDirection.down,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Already setup your Child\'s device?",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'ProximaBold',
                                color: MyColors.textSelectionColor,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 45,
                              child: FlatButton(
                                onPressed: () {
                                  Get.to(AddChildScreen());
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
                                      "Continue",
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontFamily: 'ProximaBold',
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                /*Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: Theme.of(context).buttonColor,
                          border: Border.all(
                              width: 2,
                              color: Theme.of(context).buttonColor
                          ),
                          shape: BoxShape.circle
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: Theme.of(context).buttonColor,
                          border: Border.all(
                              width: 2,
                              color: Theme.of(context).buttonColor
                          ),
                          shape: BoxShape.circle
                      ),
                    )
                  ],
                ),*/
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
