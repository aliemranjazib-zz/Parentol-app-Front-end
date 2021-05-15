import 'package:admin/admin.dart';
import 'package:bubble_overlay/bubble_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parentol/screens/about.dart';
import 'package:parentol/screens/setup.dart';
import 'package:parentol/utils/MyColors.dart';
import 'package:parentol/utils/header.dart';
import 'package:get/get.dart';

class AdminAccess extends StatefulWidget {
  @override
  _AdminAccessState createState() => _AdminAccessState();
}

class _AdminAccessState extends State<AdminAccess> {
  bool switch1 = false;
  bool switch2 = false;
  bool switch3 = false;
  bool switch4 = false;
  bool switch5 = false;
  final BubbleOverlay bubbleOverlay = BubbleOverlay();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                padding: EdgeInsets.only(left: 20, right: 20, top: 15),
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
                            "Admin Access",
                            style: texttheme.headline1,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                                "You need to give Parentol special access to work properly. After you turn them on, return the pressing back button.",
                                textAlign: TextAlign.center,
                                style: texttheme.headline4),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Read our ",
                                  style: texttheme.headline4,
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.to(Terms());
                                  },
                                  child: Text(
                                    "terms and condition!",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontSize: 14.0,
                                        fontFamily: 'ProximaBold',
                                        color: MyColors.textSelectionColor),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(bottom: 10),
                                child: ListTile(
                                  title: Text("Device Admin",
                                      style: texttheme.bodyText1),
                                  subtitle: Text(
                                      "Parentol need Administrator access to work",
                                      style: texttheme.headline6),
                                  trailing: FlutterSwitch(
                                    width: 40.0,
                                    height: 21.0,
                                    valueFontSize: 11.0,
                                    toggleSize: 22.0,
                                    value: switch1,
                                    borderRadius: 30.0,
                                    padding: 2.0,
                                    activeText: "",
                                    inactiveText: "",
                                    activeColor: Theme.of(context).buttonColor,
                                    showOnOff: true,
                                    onToggle: (val) {
                                      setState(() {
                                        Admin.enable();
                                        switch1 = val;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(bottom: 10),
                                child: ListTile(
                                  title: Text(
                                    "Overlays",
                                    style: texttheme.bodyText1,
                                  ),
                                  subtitle: Text(
                                    "Make app blocking extra effective ba allowing overlays on the following screen.",
                                    style: texttheme.headline6,
                                  ),
                                  trailing: FlutterSwitch(
                                    width: 40.0,
                                    height: 21.0,
                                    valueFontSize: 11.0,
                                    toggleSize: 22.0,
                                    value: switch2,
                                    borderRadius: 30.0,
                                    padding: 2.0,
                                    activeText: "",
                                    inactiveText: "",
                                    activeColor: Theme.of(context).buttonColor,
                                    showOnOff: true,
                                    onToggle: (val) {
                                      setState(() {
                                        bubbleOverlay.openBubble();

                                        switch2 = val;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(bottom: 10),
                                child: ListTile(
                                  title: Text(
                                    "Accessibility",
                                    style: texttheme.bodyText1,
                                  ),
                                  subtitle: Text(
                                    "Please switch accessibility mode to ON to prevent Children from deleting Parentol from their device.",
                                    style: texttheme.headline6,
                                  ),
                                  trailing: FlutterSwitch(
                                    width: 40.0,
                                    height: 21.0,
                                    valueFontSize: 11.0,
                                    toggleSize: 22.0,
                                    value: switch3,
                                    borderRadius: 30.0,
                                    padding: 2.0,
                                    activeText: "",
                                    inactiveText: "",
                                    activeColor: Theme.of(context).buttonColor,
                                    showOnOff: true,
                                    onToggle: (val) {
                                      setState(() {
                                        switch3 = val;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(bottom: 10),
                                child: ListTile(
                                  title: Text(
                                    "Usage Access",
                                    style: texttheme.bodyText1,
                                  ),
                                  subtitle: Text(
                                    "Parentol needs to be turn ON in usage to track apps and block them.",
                                    style: texttheme.headline6,
                                  ),
                                  trailing: FlutterSwitch(
                                    width: 40.0,
                                    height: 21.0,
                                    valueFontSize: 11.0,
                                    toggleSize: 22.0,
                                    value: switch4,
                                    borderRadius: 30.0,
                                    padding: 2.0,
                                    activeText: "",
                                    inactiveText: "",
                                    activeColor: Theme.of(context).buttonColor,
                                    showOnOff: true,
                                    onToggle: (val) {
                                      setState(() {
                                        switch4 = val;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(bottom: 10),
                                child: ListTile(
                                  title: Text(
                                    "Notification Access",
                                    style: texttheme.bodyText1,
                                  ),
                                  subtitle: Text(
                                    "You need to give Parentol notifications access to bypass restrictions.",
                                    style: texttheme.headline6,
                                  ),
                                  trailing: FlutterSwitch(
                                    width: 40.0,
                                    height: 21.0,
                                    valueFontSize: 11.0,
                                    toggleSize: 22.0,
                                    value: switch5,
                                    borderRadius: 30.0,
                                    padding: 2.0,
                                    activeText: "",
                                    inactiveText: "",
                                    activeColor: Theme.of(context).buttonColor,
                                    showOnOff: true,
                                    onToggle: (val) {
                                      setState(() {
                                        switch5 = val;
                                      });
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            child: Column(
                              verticalDirection: VerticalDirection.down,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width - 100,
                                  height: 45,
                                  child: FlatButton(
                                    onPressed: () {
                                      Get.to(Setup());
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
                                          "Next",
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
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
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
