import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parentol/modal_class/childmodel.dart';
import 'package:parentol/screens/childloginpage.dart';
import 'package:parentol/screens/createchildprofile.dart';
import 'package:parentol/screens/help.dart';
import 'package:parentol/screens/mainpage.dart';
import 'package:parentol/screens/settings.dart';
import 'package:parentol/screens/subscriptionnew.dart';
import 'package:parentol/utils/MyColors.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'about.dart';
import 'home.dart';

class ChildPhoneChilds extends StatefulWidget {
  @override
  _ChildPhoneChildsState createState() => _ChildPhoneChildsState();
}

class _ChildPhoneChildsState extends State<ChildPhoneChilds> {
  Timer timer;
  int counter = 0;
  TextEditingController _pincontroller = TextEditingController();
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  String data;
  List<ChildModel> children;
  String email = "mm@gmail.com";
  Future deleteChild({email, child_id, pin}) async {
    try {
      String url = 'https://parentol.seruce.com/api/child/delete';
      Map<String, dynamic> deleteChildData = {
        "email": email,
        "child_id": child_id,
        "pin": pin
      };
      var response = await http.post(Uri.encodeFull(url),
          headers: {
            HttpHeaders.contentTypeHeader: 'application/json',
          },
          body: json.encode(deleteChildData));
      print(deleteChildData);
      print(response.body);
      return json.decode(response.body);
    } catch (e) {
      Get.snackbar('', e.toString());
      print("Error at addTransaction " + e.toString());
    }
  }

  Future<void> getData() async {
    print("https://parentol.seruce.com/api/child?email=${email}");
    http.Response response = await http
        .get("https://parentol.seruce.com/api/child?email=${email}");
    print(response.statusCode);
    if (response.statusCode == 200) {
      data = response.body; //store response as string
      print(data);
      children = childModelListFromJson(data);
      setState(() {
        // just printed length of data
      });
      print(children);
    } else {
      print(response.statusCode);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    timer = Timer.periodic(Duration(seconds: 3), (Timer t) => getData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
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
                      height: 30,
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
                            Spacer(),
                            Container(
                                padding: EdgeInsets.all(20),
                                child: Image.asset("assets/parentol_logo.png",
                                    width: 140,
                                    color: Theme.of(context).primaryColor)),
                            Spacer(),
                            SizedBox(
                              width: 20,
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
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Select Child\'s Phone",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'ProximaBold',
                                      color: Color(0xFF636363)),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Did you create Child\'s profile in parent\'s phone? Create First one and then try here again",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'Proxima',
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: RefreshIndicator(
                              onRefresh: getData,
                              child: ListView.builder(
                                shrinkWrap: true,
                                reverse: true,
                                itemCount:
                                    children == null ? 0 : children.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return GestureDetector(
                                    onLongPress: () {
                                      print(children[index].id);
                                      showDialogWidget(children[index]);

                                      // Get.dialog(showDialogWidget);
                                    },
                                    child: Card(
                                      child: ListTile(
                                        title: Text(children[index].name),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 45,
                            child: FlatButton(
                              onPressed: () async {},
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

  showDialogWidget(ChildModel child) => showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          title: Text("Enter Pin to delete child"),
          content: textField('Enter pin', _pincontroller),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Cancel',
                )),
            FlatButton(
                onPressed: () async {
                  bool v;

                  var result = await deleteChild(
                      child_id: child.id,
                      email: "mm@gmail.com",
                      pin: int.parse(_pincontroller.text));
                  print(result);

                  Navigator.of(context).pop();
                  Get.snackbar('', 'deleted');

                  // if (otpVal != null)
                  //   validatePhone(mobileNumber, otpVal).then((res) {
                  //     Navigator.of(context).pop();

                  //     if (res) {
                  //       coreUtils.preferences
                  //           .setString('mobileNumber', mobileNumber);
                  //       Navigator.of(context).pushReplacementNamed('/router');
                  //     } else
                  //       Get.showSnackbar('invalid pin');
                  //   });
                },
                child: Text(
                  'Submit',
                )),
          ],
        );
      });

  textField(hintText, controller) => TextField(
        controller: controller,
      );
}
