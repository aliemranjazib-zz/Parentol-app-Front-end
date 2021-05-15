import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parentol/screens/adminaccess.dart';
import 'package:parentol/screens/parentpin.dart';
import 'package:parentol/utils/MyColors.dart';
import 'package:get/get.dart';
import 'package:parentol/utils/customewidgets.dart';
import 'package:parentol/utils/header.dart';

class Setup extends StatefulWidget {
  @override
  _SetupState createState() => _SetupState();
}

class _SetupState extends State<Setup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                              "You are Set Up!",
                              style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'ProximaBold',
                                  color: MyColors.textSelectionColor),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Now you can close this app by click in Finish and it will close. You can control it from your parent device. To uninstall in your child device you need to access ic with your pin code, otherwise you have to reset the phone.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontFamily: 'Proxima',
                                  color: MyColors.textSelectionColor),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              "assets/setup_success_parent.png",
                              height: 280,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          verticalDirection: VerticalDirection.down,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 45,
                              child: CustomButton(
                                title: "Finish",
                                onPressed: () {
                                  // Get.to(ParentPin());
                                },
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
