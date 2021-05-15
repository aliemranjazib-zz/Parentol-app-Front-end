import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:parentol/modal_class/childmodel.dart';
import 'package:parentol/screens/createchildprofile.dart';
import 'package:parentol/screens/help.dart';
import 'package:parentol/screens/settings.dart';
import 'package:parentol/screens/subscriptionnew.dart';
import 'package:parentol/utils/MyColors.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'about.dart';
import 'home.dart';
import 'package:get_storage/get_storage.dart';

class AddChildScreen extends StatefulWidget {
  @override
  _AddChildScreenState createState() => _AddChildScreenState();
}

class _AddChildScreenState extends State<AddChildScreen> {
  Timer timer;
  int counter = 0;
  TextEditingController _pincontroller = TextEditingController();
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  String data;
  List<ChildModel> children;
  final pmail = GetStorage();

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
      // print(deleteChildData);
      // print(response.body);
      return json.decode(response.body);
    } catch (e) {
      Get.snackbar('', e.toString());
      print("Error at addTransaction " + e.toString());
    }
  }

  Future<void> getData() async {
    final pmail = GetStorage();
    final key = pmail.read('token');
    // print("https://parentol.seruce.com/api/child?email=${user.email}");
    http.Response response = await http
        .get("https://parentol.seruce.com/api/child", headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $key'
    });
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
      key: _drawerKey,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 40),
            ),
            ListTile(
              leading: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).primaryColor, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  padding:
                      EdgeInsets.only(left: 6, right: 0, bottom: 2, top: 2),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Theme.of(context).primaryColor,
                    size: 18,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              title: Text(
                'Account',
                style: TextStyle(
                    fontSize: 26.0,
                    fontFamily: 'ProximaBold',
                    color: Color(0xFF636363)),
              ),
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Image(
                    image: Svg('assets/menu-subscription.svg'),
                    width: 16,
                  ),
                  SizedBox(
                    width:
                        18, // here put the desired space between the icon and the text
                  ),
                  Text('Subscription',
                      style: TextStyle(
                          fontSize: 19.0,
                          fontFamily: 'ProximaBold',
                          color: Color(0xFF636363))),
                ],
              ),
              onTap: () {
                Get.to(Subscription());
              },
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Image(
                    image: Svg('assets/menu-settings.svg'),
                    width: 18,
                  ),
                  SizedBox(
                    width:
                        18, // here put the desired space between the icon and the text
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(
                        fontSize: 19.0,
                        fontFamily: 'ProximaBold',
                        color: Color(0xFF636363)),
                  ),
                ],
              ),
              onTap: () {
                Get.to(Settings());
              },
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Image(
                    image: Svg('assets/menu-about.svg'),
                    width: 18,
                  ),
                  SizedBox(
                    width:
                        18, // here put the desired space between the icon and the text
                  ),
                  Text(
                    'About',
                    style: TextStyle(
                        fontSize: 19.0,
                        fontFamily: 'ProximaBold',
                        color: Color(0xFF636363)),
                  ),
                ],
              ),
              onTap: () {
                Get.to(About());
              },
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Image(
                    image: Svg('assets/menu-help.svg'),
                    width: 18,
                  ),
                  SizedBox(
                    width:
                        18, // here put the desired space between the icon and the text
                  ),
                  Text(
                    'Help',
                    style: TextStyle(
                        fontSize: 19.0,
                        fontFamily: 'ProximaBold',
                        color: Color(0xFF636363)),
                  ),
                ],
              ),
              onTap: () {
                Get.to(Help());
              },
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Image(
                    image: Svg('assets/menu-logout.svg'),
                    width: 18,
                  ),
                  SizedBox(
                    width:
                        18, // here put the desired space between the icon and the text
                  ),
                  Text(
                    'Logout',
                    style: TextStyle(
                        fontSize: 19.0,
                        fontFamily: 'ProximaBold',
                        color: Color(0xFF636363)),
                  ),
                ],
              ),
              onTap: () async {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
              child: Container(
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
                                  child: Icon(
                                    Icons.menu,
                                    color: Theme.of(context).primaryColor,
                                    size: 28,
                                  ),
                                  onTap: () {
                                    _drawerKey.currentState.openDrawer();
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
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hello, Jon!",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'ProximaBold',
                                        color: Color(0xFF636363)),
                                  ),
                                  Text(
                                    "These are your family members",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: 'Proxima',
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
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
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return GestureDetector(
                                      onLongPress: () {
                                        print(children[index].id);
                                        showDialogWidget(children[index]);

                                        // Get.dialog(showDialogWidget);
                                      },
                                      // child: ListTile(
                                      //   title: Text(children[index].name),
                                      // ),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 8, 0, 8),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 110,
                                          decoration: new BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            borderRadius:
                                                BorderRadius.circular(25.0),
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
                                                Get.to(HomePage());
                                              },
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                padding: EdgeInsets.only(
                                                    left: 20,
                                                    right: 20,
                                                    top: 10,
                                                    bottom: 10),
                                                child: Row(
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Spacer(),
                                                        Text(
                                                          children[index]
                                                              .name
                                                              .toUpperCase(),
                                                          style: TextStyle(
                                                              fontSize: 28.0,
                                                              fontFamily:
                                                                  'ProximaBold',
                                                              color: Color(
                                                                  0xFF41B781)),
                                                        ),
                                                        SizedBox(
                                                          height: 5,
                                                        ),
                                                        Text(
                                                          "Screen time left",
                                                          style: TextStyle(
                                                              fontSize: 12.0,
                                                              fontFamily:
                                                                  'ProximaBold',
                                                              color: Colors
                                                                  .grey[600]),
                                                        ),
                                                        Text(
                                                          "10:00".toUpperCase(),
                                                          style: TextStyle(
                                                              fontSize: 20.0,
                                                              fontFamily:
                                                                  'ProximaBold',
                                                              color: Color(
                                                                  0xFF41B781)),
                                                        ),
                                                        Spacer()
                                                      ],
                                                    ),
                                                    Spacer(),
                                                    Image.asset(
                                                      "assets/avatar_cat.png",
                                                      width: 65,
                                                      height: 65,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
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
                                onTap: () {
                                  Get.to(CreateChildProfile());
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.all(12),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Add Child's Phone",
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
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Upgrade to ",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Proxima',
                                      color: Colors.grey[600]),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Subscription()));
                                  },
                                  child: Text(
                                    "Premium!",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Proxima',
                                        color: Theme.of(context).primaryColor),
                                  ),
                                ),
                              ],
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
                      child_id: child.id, pin: int.parse(_pincontroller.text));
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
